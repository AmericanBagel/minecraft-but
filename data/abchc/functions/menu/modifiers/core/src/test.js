const input = require('./modifiers.json');

const output = {};

input.forEach(element => {
    id = '"' + element.toString() + '"';
    output[element] = {};
});

console.log(output)