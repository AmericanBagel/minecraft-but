const fs = require('fs');
const path = require('path');
const { marked } = require('marked');
const md2bbc = require('md2bbc');

let readme = fs.readFileSync(path.normalize('../README.md'), 'utf-8');

readme = readme.replace(/\.\//g, 'https://github.com/AmericanBagel/minecraft-but/edit/master/README.md')

marked.setOptions({
	renderer: new md2bbc(),
});

let out = marked(readme);

fs.writeFileSync(path.normalize('../README.bbcode.txt'), out)