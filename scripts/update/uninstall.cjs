const fs = require('fs');
const path = require('path');
const dir = path.join(__dirname, '../data/abchc/functions/modifiers');
const { program } = require('commander');

function getDirsInDir(filepath) {
	return fs.readdirSync(filepath, { withFileTypes: true }).reduce((a, c) => {
		c.isDirectory() && a.push(c.name);
		return a;
	}, []);
}

function getFilesInDir(filepath) {
    return fs.readdirSync(filepath, { withFileTypes: true }).reduce((a, c) => {
		!c.isDirectory() && a.push(c.name);
		return a;
	}, []);
}

function isDirectory(filepath) {
    return fs.existsSync(filepath) && fs.lstatSync(filepath).isDirectory();
}

function isFile(filepath) {
    return !isDirectory(filepath);
}

function fileOrDirectory(filepath) {
    return isDirectory(filepath) ? "directory" : "folder"
}

function scanDir(filepath, output, verbose) {
	const directories = getDirsInDir(filepath);
    const files = getFilesInDir(filepath);

    directories.forEach(directory => {
        scanDir(path.join(filepath, directory), output, verbose);
    })

    files.forEach(file => {
        scanFile(path.join(filepath, file), output, verbose);
    })
}

function scanFile(filepath, output, verbose) {
    // Only proceed if file is mcfunction
    if (path.basename(filepath).match(/\.mcfunction$/) !== null) {
        const text = fs.readFileSync(filepath, "utf-8")
        const arr = text.split("\n");

        const objectives = [];
        arr.forEach(e => {
            const match = e.match(/(?<=scoreboard objectives add )[a-zA-Z0-9_.]*(?<= .+)/);
            if (match !== null) {
                objectives.push(match[0])
            }
        })

        if (objectives.length > 0) {
            let uninstallMCF = '';
            objectives.forEach(e => {
                uninstallMCF += 'scoreboard objectives remove ' + e + '\n'
            })
            
            fs.writeFileSync(path.join(path.dirname(filepath), "uninstall.mcfunction"), uninstallMCF)
            
            if (verbose) {
                console.log("Wrote " + path.relative((path.dirname(filepath)), "uninstall.mcfunction"))
            }
        }
    }
}

program
    .name('mcfunction-uninstall')
    .description('A CLI tool to automatically create uninstall functions for your data pack by recursively scanning for scoreboard objectives and adding uninstall functions which remove them.')
    .version('1.0.0')
    .option("-v, --verbose", "Increase level of verbosity. How much you want STDOUT spammed.")
    .path("-p, --perfile", "Writes uninstall functions next to the functions that added scoreboard objectives instead of one mcfunction.").conflicts("output")
    .option("-o, --output <path>", "File path for complete uninstall function.", "./uninstall.mcfunction")
    .argument("<paths...>", "filepaths of directories or files with mcfunction files")
    .action((paths => {
        const verbose = program.opts().isVerbose
        const output = program.opts().output

        paths.forEach(filepath => {
            if (isDirectory(filepath)) {
                scanDir(filepath, output, verbose)
            } else {
                scanFile(filepath, output, verbose)
            }
        })
}))

program.parse();