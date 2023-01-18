// Script to automatically generate placefeature function
// Source: https://github.com/Arcensoth/mcdata/blob/master/processed/reports/worldgen/minecraft/worldgen/placed_feature/data.values.txt
/*
for (let index = 0; index < array.length; index++) {
    const data = array[index];
}
*/



const { count } = require('console');
const fs = require('fs');
const https = require('https');
  
// URL of the image
const url = 'https://raw.githubusercontent.com/Arcensoth/mcdata/master/processed/reports/worldgen/minecraft/worldgen/placed_feature/data.json';
  
https.get(url,(res) => {
    const path = `${__dirname}/data.json`; 
    const filePath = fs.createWriteStream(path);
    res.pipe(filePath);
    filePath.on('finish',() => {
        filePath.close();
        console.log('Download Completed'); 
    })
})

const data = require('./data.json');

/*
for (let index = 0; index < data.values.length; index++) {
    const feature = data.values[index];
    let file = "";
    file += `/placefeature ${feature} ~ ~ ~<br>`
}
*/
let text = ``;
let features = 0;

for (let i = 0; i < data.values.length; i++) {
    text += "execute if score out abch.rng.math matches " + i + " run place feature " + data.values[i] + " ~ ~ ~\n";
    features = i;
  }

const header = `#> abchc:modifiers/random_structures/placefeature\n# Function automatically generated by a Node.JS script (./src/index.js) to place a random feature\n# ${features} total features\n# @within abchc:modifiers/random_structures/**\n# @context feature marker\n\n#> Get random number\nscoreboard players set in abch.rng.math 1\nscoreboard players set in1 abch.rng.math ${features}\nfunction abchc:apis/rng/range\n\n#> Place random feature\n`
const bottom = `\n#> Visuals\nfunction abchc:modifiers/random_structures/visuals\n\n#> Kill marker\nkill @s`
text = header + text + bottom

fs.writeFile('../placefeature.mcfunction', text, error => {
    if (error) {
        console.error(error)
        return
    }
})