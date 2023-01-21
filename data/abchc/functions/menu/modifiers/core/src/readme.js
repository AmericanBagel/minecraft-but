const outdent = require('outdent');
const jsonc = require('jsonc');
const fs = require('fs');

const { categories, modifiers } = jsonc.parse(
	fs.readFileSync('./modifiers.jsonc', 'utf-8')
);

let text =
    `<details>\n` +
    `<summary>Full list of modifiers</summary>\n`;

categories.forEach((category) => {
	const modsInCategory = modifiers.filter(
		(modifier) => modifier.category === category.id
	);

	text +=
        `    <details>\n` +
        `    <summary>${category.name} (${category.id})</summary>`;

	modsInCategory.forEach((modifier) => {
		text += `        - ${modifier.name} (${modifier.id})<br>\n`;
	});
	text += '    </details>\n';
});

text += '</details>';

console.log(text);
