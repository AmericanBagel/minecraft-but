import fs from 'fs';
import crypto from 'crypto';
import https from 'https';
import got from 'got';
import path from 'path';
import { pipeline } from 'node:stream/promises';
import { exit } from 'process';
import AdmZip from 'adm-zip';
import { exec } from 'child_process';
import async from 'async';
import { program } from 'commander';

const dir = 'src';

const manifestFilename = 'version_manifest_v2.json';
const manifestUrl =
	'https://launchermeta.mojang.com/mc/game/version_manifest_v2.json';
const manifestPath = path.join(manifestFilename);

const scripts = path.join('./scripts/');

program
	.option('--force, -f', 'Forcefully download new version')
	.option('--skip-download, -s', 'Skip downloading and jump to processing');

program.parse(process.argv);

main();

/**
 *
 * @param {String} path File path to download to
 * @param {String} url URL string of file to download
 * @returns Downloaded file
 */
async function download(url, path) {
	const gotStream = got.stream.get(url);

	const outStream = fs.createWriteStream(path);

	try {
		await pipeline(gotStream, outStream);
	} catch (error) {
		console.error(error);
	}
}

/**
 *
 * @param {String} path File path to download to
 * @param {String} url URL string of file to download
 * @returns Downloaded file
 */
async function downloadJSON(url, path) {
	await download(url, path);
	return JSON.parse(fs.readFileSync(manifestPath, 'utf-8'));
}
async function main() {
	const options = program.opts();
	const force = options.F;
	const skipDownload = options.S;

	const manifest = await downloadJSON(manifestUrl, manifestPath);
	const latestVersion = await manifest.versions.find(
		(e) => e.type === 'release'
	);
	console.log(latestVersion);

	function getFileChecksum(filepath) {
		const fileBuffer = fs.readFileSync(filepath);
		const hashsum = crypto.createHash('sha1');
		hashsum.update(fileBuffer);

		const hex = hashsum.digest('hex');

		return hex;
	}

	async function getLatestManifest() {
		const latestManifestPath = './latest-version.json';
		await download(latestVersion.url, path.join(latestManifestPath));
		const latestManifest = JSON.parse(fs.readFileSync(latestManifestPath));
		return latestManifest;
	}

	async function getLatestZip() {
		console.info('Downloading latest latest-version.jar ...');
		await download(
			latestManifest.downloads.server.url,
			'./latest-version.jar'
		);
		console.info('Completed download of latest-version.jar .');
	}

	function unzipJar() {
		console.log('Preparing for extracting of latest-version.jar ...');
		if (fs.existsSync('latest-version')) {
			console.log('./latest-version directory detected. Removing...');
			fs.rmSync('latest-version', { recursive: true, force: true });
			console.log('./latest-version directory removed.');
		}

		console.log('Extracting latest-version.jar ...');
		let zip = new AdmZip('latest-version.jar');

		zip.extractAllTo('latest-version', true);
		console.log('latest-version.jar extracted.');

		const versionsPath = path.join('./latest-version/META-INF/versions/');
		const version = fs.readdirSync(versionsPath)[0];
		const extractPath = path.join(versionsPath, `${version}/server-${version}`)
		const jarPath = path.join(versionsPath, `${version}/server-${version}.jar`);

		let serverZip = new AdmZip(jarPath);
		serverZip.extractAllTo(extractPath);
	}

	function processData() {
		console.info('Processing scripts in ./update directory...');

		const files = fs.readdirSync(path.join('./update')); // Read scripts from scripts directory
		const funcs = files.map(function (file) {
			console.log(`Running script ./update/${file}`);
			return exec.bind(null, `node update/${file}`);
		});

		function getResults(err, data) {
			if (err) {
				return console.log(err);
			}
			data.forEach((result) => {
				result.forEach((string) => {
					const lines = string
						.split('\n')
						.filter((e) => e.length !== 0);
					lines.forEach((line) => {
						console.log('	->', line);
					});
				});
			});
		}

		// Run scripts scripts
		async.parallel(funcs, getResults);
	}

	async function update() {
		await getLatestZip();
		unzipJar();
		processData();
	}

	const latestManifest = await getLatestManifest();

	if (!skipDownload) {
		if (!force) {
			if (latestManifest.id !== latestVersion.id) {
				console.info(
					'\u001b[33mVersion out of date! Downloading latest version...'
				);
				await update();
			} else {
				console.info(`\u001b[32mVersions match! Exiting...`);
				exit;
			}

			if (fs.existsSync('./latest-version.jar')) {
				const currentVersionChecksum = getFileChecksum(
					'./latest-version.jar'
				);

				console.log(
					`Current version checksum is \u001b[36m${currentVersionChecksum}.\u001b[0m Latest version is \u001b[36m${latestVersion.id}\u001b[0m with checksum of \u001b[36m${latestManifest.downloads.server.sha1}`
				);

				if (
					latestManifest.downloads.server.sha1 !==
					currentVersionChecksum
				) {
					console.info(
						`\u001b[33mVersion checksum mismatch! Downloading latest version...`
					);
					await update();
				} else {
					console.info(`\u001b[32mVersions match! Exiting...`);
					exit;
				}
			} else {
				console.info(
					`\u001b[33mVersion checksum mismatch! Downloading latest version...`
				);
				await update();
			}
		} else {
			console.info(
				`\u001b[33m--force used. Forcefully downloading latest version...`
			);
			update();
		}
	} else {
		console.info(
			`\u001b[33m--skip-download used. Skipping download. Processing scripts in ./update directory...`
		);
		processData();
	}
}
