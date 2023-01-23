const outdent = require('outdent');
const jsonc = require('jsonc');
const fs = require('fs');
const path = require('path');

const { categories, modifiers } = jsonc.parse(
	fs.readFileSync(path.join(__dirname, './modifiers.jsonc'), 'utf-8')
);

const readmePath = path.join(__dirname, '../README.md');
const readme = fs.readFileSync(readmePath, 'utf-8');

let lines = [];

categories.forEach((category) => {
	const modsInCategory = modifiers.filter(
		(modifier) => modifier.category === category.id
	);

	lines.push(
        `    <details>`,
        `    <summary>${category.name} (${category.id})</summary>`
	)

	modsInCategory.forEach((modifier) => {
		lines.push(`        - ${modifier.name} (${modifier.id})<br>`)
	});
	lines.push('    </details>');
});

lines.push('</details>','');

const readmeLines = readme.split("\n");
const startIndex = readmeLines.findIndex(e => e === '<summary>Full list of modifiers</summary>');
const endIndex = readmeLines.findIndex(e => e === '### ![Configuration](./assets/configuration.png)')

readmeLines.splice(
	startIndex + 1,
	endIndex - 2 - startIndex, 
	...lines
)
fs.writeFileSync(readmePath, readmeLines.join("\n"))