const fs = require('fs');
const pathjs = require('path');

const dir = pathjs.join(__dirname, '../data/abchc/functions/modifiers');

/*
    - For directory - scanDir()
        - Get list of all files
            - scanFile()
                - fs.readFileSync()
                - Split into lines
                - lines.forEach(line =>
                    - line.match((?<!scoreboard objectives add ).*(?<= .*)) to get match (console.log to see structure of result first)
                    - Add line to list
                - Return list
        - Get list of all folders
            - scanDir(folder)
*/

function getDirsInDir(path) {
	return fs.readdirSync(path, { withFileTypes: true }).reduce((a, c) => {
		c.isDirectory() && a.push(c.name);
		return a;
	}, []);
}

function getFilesInDir(path) {
    return fs.readdirSync(path, { withFileTypes: true }).reduce((a, c) => {
		!c.isDirectory() && a.push(c.name);
		return a;
	}, []);
}

function scanDir(path) {
	const directories = getDirsInDir(path);
    const files = getFilesInDir(path);

    directories.forEach(directory => {
        console.log(pathjs.join(path, directory));
        scanDir(pathjs.join(path, directory));
    })

    files.forEach(file => {
        console.log(pathjs.join(path, file));
        scanFile(pathjs.join(path, file));
    })
}

function scanFile(path) {
    // Only proceed if file is mcfunction
    if (pathjs.basename(path).match(/\.mcfunction$/) !== null) {
        const text = fs.readFileSync(path, "utf-8")
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

            fs.writeFileSync(pathjs.join(pathjs.dirname(path), "uninstall.mcfunction"), uninstallMCF)
        }
    }
}

console.log(`Reading directory ${dir}`);
//scanDir(dir);
scanDir(pathjs.join(dir));