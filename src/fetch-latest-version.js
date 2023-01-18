const fs = require('fs');
const crypto = require('crypto');
const https = require('https')

const dir = 'src'

const manifestFilename = 'version_manifest_v2.json'
const manifestUrl = 'https://launchermeta.mojang.com/mc/game/version_manifest_v2.json'

/**
 * 
 * @param {String} path File path to download to
 * @param {String} url URL string of file to download
 * @param {Function} callback Callback function to run on download completion 
 * @returns Downloaded file
 */
function download(url, path, callback) {
	const file = fs.createWriteStream(path)
	const request = https.get(url, function (response) {
		console.log(response)
		response.pipe(file)
	})

	file.on("finish", () => {
		file.close(() => {
			return fs.create(path)
		});
	})
}

/**
 * 
 * @param {String} path File path to download to
 * @param {String} url URL string of file to download
 * @param {Function} callback Callback function to run on download completion 
 * @returns Downloaded file
 */
function downloadJSON(url, path, callback) {
	const contents = download(url, path, callback)
	console.log("Contents:")
	console.log(contents)
	return JSON.parse(contents)
}

const manifestPath = `./${dir}/${manifestFilename}`

console.log(JSON.parse(download(manifestUrl, manifestPath)))

/* const manifestFilename = 'version_manifest_v2.json'
const manifestUrl = 'https://launchermeta.mojang.com/mc/game/version_manifest_v2.json'
const manifestPath = `./${dir}/${manifestFilename}`

const manifest = downloadJSON(manifestUrl, manifestPath)
const release = manifest.latest.release

function getFileChecksum(filepath) {
	const fileBuffer = fs.readFileSync(filepath)
	const hashsum = crypto.createHash('sha1')
	hashsum.update(fileBuffer)

	const hex = hashsum.digest('hex')

	return hex
}


latestVersionChecksum = latestManifest.downloads.server.sha1
currentVersionChecksum = getFileChecksum('./src/latest-version.jar')

console.log(`Current version checksum is \u001b[36m${currentVersionChecksum}.\u001b[0m Latest version is \u001b[36m${manifest.latest.release}\u001b[0m with checksum of \u001b[36m${latestVersionChecksum}`)

if (latestVersionChecksum !== currentVersionChecksum) {
	console.info(`\u001b[33mVersion checksum mismatch! Downloading latest version...`)

	download(latestManifest.downloads.server.url, './src/latest-version.jar')
} else {
	console.info(`\u001b[32mVersions match! Exiting...`)
} */