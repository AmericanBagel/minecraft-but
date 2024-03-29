// Script to automatically generate placefeature function
const path = require('path');
const fs = require('fs');

var worldgenPath =
	path.join(__dirname, '../latest-version/META-INF/versions/1.19.3/server-1.19.3/data/minecraft/worldgen/')

var featurePath = worldgenPath + 'placed_feature';

var structurePath = worldgenPath + 'structure_set'

    var functionPath = path.join(__dirname, '../../data/minecraft_but.core/functions/modifiers/random_structures/')

function main() {
    console.log("Starting random_structures...")
    function place_feature () {
        let _files = fs.readdirSync(featurePath);
        let files = [..._files];
    
        let features = [];
        files.forEach(fileName => {
            jsonFile = fs.readFileSync(featurePath + '/' + fileName)
            data = JSON.parse(jsonFile);
            features.push(data.feature)
        })
    
        let text = '';
        let featureCount = 0;
    
        for (let i = 0; i < features.length; i++) {
            text += "execute if score $out random matches " + i + " run place feature " + features[i] + " ~ ~ ~\n";
            featureCount = i;
        }
    
        const header = `#> minecraft_but.core:modifiers/random_structures/place_feature\n# Function automatically generated by a NodeJS script (src/index.js) to place a random feature\n# ${featureCount} total features \n# @within minecraft_but.core:modifiers/random_structures/**\n# @context feature marker\n\n#> Get random number\nscoreboard players set $min random 1\nscoreboard players set $max random ${featureCount}\nfunction random:uniform\n\n#> Place random feature\n`
        const bottom = `\n#> Visuals\nfunction minecraft_but.core:modifiers/random_structures/visuals\n\n#> Kill marker\nkill @s`
        text = header + text + bottom
    
        fs.writeFileSync(functionPath + 'place_feature.mcfunction', text, error => {
            if (error) {
                console.error(error)
                return
            }
        })
        console.log("Wrote place_feature")
    }

    place_feature()
	
    function place_structure () {
        let _files = fs.readdirSync(structurePath);
        let files = [..._files]

        let structures = [];
        files.forEach(fileName => {
            data = JSON.parse(fs.readFileSync(structurePath + '/' + fileName));
            data.structures.forEach(structure => {
                structures.push(structure.structure)
            })
        })

        let text = '';

        let structureCount = 0;
        for (let i = 0; i < structures.length; i++) {
            text += "execute if score $out random matches " + i + " run place structure " + structures[i] + " ~ ~ ~\n"
            structureCount = i;
        }

        const header = `#> minecraft_but.core:modifiers/random_structures/place_structure\n#Function automatically generated by NodeJS script (src/index.js) to place a random structure\n# ${structureCount} total structures \n# @within minecraft_but.core:modifiers/random_structures/**\n# @context marker\n\n#> Get random number\nscoreboard players set $min random 1\nscoreboard players set $max random ${structureCount}\nfunction minecraft_but.core:aps/rng/range\n\n#> Place random structure\n`
        const bottom = `\n#> Visuals\nfunction minecraft_but.core:modifiers/random_structures/visuals\n\n#> Kill marker\nkill @s`
        text = header + text + bottom

        fs.writeFileSync(functionPath + 'place_structure.mcfunction', text, error => {
            if (error) {
                console.error(error)
                return
            }
        })
        console.log("Wrote place_structure")
    }

    place_structure()
    console.log("Wrote all. Exiting...")
}

main();