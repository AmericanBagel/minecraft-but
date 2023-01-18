const modifiersList = require('./modifiers_list.json');

let text = ``;

for (let i = 1; i < modifiersList.length; i++) {
    const element = modifiersList[i];

    text += `execute if score $out random matches ${i} run scoreboard players set ${element} abch.random.toggle 1\n`
    
}

console.log(text)