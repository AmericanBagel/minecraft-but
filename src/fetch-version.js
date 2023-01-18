import fs from 'fs';
import path from 'path';
import crypto from 'crypto';
import chalk from 'chalk';
import request from 'request';
import http from 'http';
import https from 'https';
import zlib from 'zlib'

const log = console.log;

var MANIFEST_URL =
	'https://launchermeta.mojang.com/mc/game/version_manifest_v2.json';
var dir = '.';
var SERVER_JAR_NAME = 'server.jar';

function httpGet(url) {
	return new Promise((resolve, reject) => {
		let client = http;

		if (url.toString().includes('https')) {
			client = https;
		}

		client
			.get(url, (resp) => {
				let chunks = [];

				// A chunk of data has been recieved.
				resp.on('data', (chunk) => {
					chunks.push(chunk);
				});

				// The whole response has been received. Print out the result.
				resp.on('end', () => {
					resolve(Buffer.concat(chunks));
				});
			})
			.on('error', (err) => {
				reject(err);
			});
	});
}

async (url) => {
	var buf = await httpGet(url);
	console.log(buf.toString('utf-8'));
};

function getFileChecksum(filepath) {
	const fileBuffer = fs.readFileSync(filepath);
	const hashsum = crypto.createHash('sha1');
	hashsum.update(fileBuffer);

	const hex = hashsum.digest('hex');

	return hex;
}

function downloadJar(id, url, path) {
    console.log(chalk.yellow(
        `\nDownloading latest version ${chalk.bold.blue(
            id
        )}...`
    ))
    request(url).pipe(fs.createWriteStream(path))
}

function extract (archivePath, extractPath) {
    const fileContents = fs.createReadStream('file1.txt.gz');
    const writeStream = fs.createWriteStream('file1.txt');
    const unzip = zlib.unzip;

    fileContents.pipe(unzip).pipe(writeStream);
}

async function main() {
	let manifest = await httpGet(MANIFEST_URL);
	manifest = JSON.parse(manifest);

	const latestVersion = manifest.versions[0];

	const jarPath = `${dir}/${SERVER_JAR_NAME}`;

	await fs.access(jarPath, fs.constants.F_OK | fs.constants.R_OK, async (err) => {
		if (err) {
			console.info(
				`\u001b[33mServer jar missing! Downloading latest version...`
			);

            downloadJar(latestVersion.id, latestVersion.url, jarPath)
		} else {
			const currentChecksum = getFileChecksum(jarPath);
			const latestChecksum = latestVersion.sha1;

			if (currentChecksum !== latestChecksum) {
				console.info(
					chalk.yellow.bold(`Version checksum mismatch!`),
					chalk.yellow(
						`Current version has checksum of ${chalk.inverse.bold.red(
							currentChecksum
						)} while latest version ${chalk.bold.blue(
							latestVersion.id
						)} has checksum of ${chalk.inverse.bold.blue(
							latestChecksum
						)}!`
					)
				);

                console.info(chalk.green(`Downloaded ${chalk.bold.blue(
                    latestVersion.id
                )} server jar and saved to ${chalk.bold.blue(
                    jarPath
                )}.`))

                
			} else {
                log(
                    chalk.green('Version is updated! Exiting...')
                )
            }
		}
	});
}

main();
