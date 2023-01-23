const fs = require('fs')

const dcs = [ "easy", "normal", "hard" ]

dcs.forEach(dc => {
    const mcf = fs.readFileSync("./" + dc + '.mcfunction', "utf8")
    let lines = mcf.split("\n")

    let dir = `./difficulty/${dc}/light_level`;
    if (!fs.existsSync(dir)) {
        fs.mkdirSync(`./difficulty/${dc}/light_level`);
    }

    const pattern = /execute as .* at @s if predicate abchc:troglodyte\/.* run /g

    lines.forEach((line) => {
        /* // Remove execute and comments
        lines.forEach(line => {
            lines[lines.indexOf(line)] = line
                .replace(pattern, "") // Remove execute
                .replace(/^#.*$/g, "") // Remove comments
        }) */
    })

    // Filter out only lines that have execute
    lines = lines.filter(e => typeof e.match(pattern) !== "null" | e.length > 0)

    // Split array into string
    const string = lines.join("\n")

    let levelLines = [];
    for (let i = 0; i < 16; i++) {
        levelLines.push(lines.filter(e => {
            const reg = new RegExp(`troglodyte/${i}`, "g");
            return matched = e.match(reg) !== null;
        }))

        levelLines [i] = levelLines[i].map(e => e.replace(/execute .* run /g, ""))
        console.log(levelLines[i])
        fs.writeFileSync(`./difficulty/${dc}/light_level/${i}.mcfunction`, levelLines[i].join("\n"))
    }

})