const fs = require('fs');
const path = require('filepath');
const dir = path.join(__dirname, '../data/abchc/functions/modifiers');

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

function scanDir(filepath) {
	const directories = getDirsInDir(filepath);
    const files = getFilesInDir(filepath);

    directories.forEach(directory => {
        scanDir(path.join(filepath, directory));
    })

    files.forEach(file => {
        scanFile(path.join(filepath, file));
    })
}

function scanFile(filepath) {
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

            console.log("Wrote " + path.join(path.dirname(filepath), "uninstall.mcfunction"))
            fs.writeFileSync(path.join(path.dirname(filepath), "uninstall.mcfunction"), uninstallMCF)
        }
    }
}

console.log(`Reading directory ${dir}`);
scanDir(path.join(dir));