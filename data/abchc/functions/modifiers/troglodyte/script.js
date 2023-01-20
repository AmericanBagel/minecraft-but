const fs = require('fs')

const dcs = [ "easy", "normal", "hard" ]

dcs.forEach(dc => {
    const mcf = fs.readFileSync("./" + dc + '.mcfunction', "utf8")
    let lines = mcf.split("\n")
    
    for (i =0; i < 16; i++) {
        const pattern = new RegExp(`/(?<!#)execute as .* at @s if predicate abchc:troglodyte\/${i} run /g`)
        lines = lines.filter((line) => {
            return line.match(pattern) != null
        })
    
        lines.forEach(line => {
            lines[lines.indexOf(line)] = line.replace(pattern, "")
        })

        fs.writeFileSync()
    }

    console.log(lines);
})