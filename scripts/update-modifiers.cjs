// Require deps
const fs = require('fs');
const Gradient = require('javascript-color-gradient');
const { colorGradient } = require('javascript-color-gradient');
const outdent = require('outdent');
const path = require('path');
const jsonc = require('jsonc');

const namespaceDir = (__dirname, '../data/minecraft_but.core/functions/');
const menuDir = path.join(
	__dirname,
	'../data/minecraft_but.core/functions/menu/'
);
const coreDir = path.join(
	__dirname,
	'../data/minecraft_but.core/functions/menu/modifiers/core/'
);

// Require modifiers JSON
let { modifiers, categories } = jsonc.parse(
	'' + fs.readFileSync('./modifiers.jsonc')
);

modifiers.sort((a, b) => a.id.localeCompare(b.id))

const scripts = [
    "./readme.cjs"
]

function runScripts() {
	console.info('Processing scripts...');

	const funcs = scripts.map(function (script) {
		console.log(`Running script ${script}`);
		return exec.bind(null, `node ${script}`);
	});

	function getResults(err, data) {
		if (err) {
			return console.log(err);
		}
		data.forEach((result) => {
			result.forEach((string) => {
				const lines = string.split('\n').filter((e) => e.length !== 0);
				lines.forEach((line) => {
					console.log('	->', line);
				});
			});
		});
	}

	// Run scripts scripts
	async.parallel(funcs, getResults);
}

function parseDescription(description) {
    let out = '';
	if (typeof description === 'string') {
		try {
			out = '{"text":"' + description.replace(/"/g, '\\"').replace(/\n/g, '\\n') + '","color":"#ECEFF5"}';
		} catch (e) {
            throw error;
		}
	} else if (typeof description === 'object') {
        out = JSON.stringify(description).replace(/"/g, '\\"')
        .replace(/\n/g, '\\n');
    } else {
        throw new Error(
            'Please use either a tellraw JSON object or a tellraw JSON string!'
        );
    }
    return out;
}

let text = outdent`
    #> minecraft_but.core:menu/modifiers/core/categories
    # Link to different categories
    # @within minecraft_but.core:menu/**
    # @context menu player

    #> Click sound
    function minecraft_but.core:menu/actions/click

    #> Update page score
    scoreboard players set @s minecraft_but.menu.page 11

    #> Disable sendCommandFeedback
    gamerule sendCommandFeedback false

    #> Set sendCommandFeedback back next tick
    schedule function minecraft_but.core:menu/actions/enable_feedback 1t append

    #> Header
    # If there are no expansion loaded, clicking top bar sends player back to main menu.
    # Doing this gets rid of that unnecessary step between directory and page 1 here.
    execute unless score $total minecraft_but.expansion matches 1.. run tellraw @s ["\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n",{"text":"---------------------------------------------","color":"#0F21C6"},"\\n",{"text":"←|","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/actions/back_to_main"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back to the main menu.","color":"#ECEFF5"}]}},{"text":" Modifier Categories","color":"#17B7CD","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/actions/back_to_main"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back to the main menu.","color":"#ECEFF5"}]}},"\\n",{"text":"---------------------------------------------","color":"#0F21C6"}]

    # If there is an expansion loaded, clicking top bar sends the player to the modifiers directory
    # which has links to the different expansion packs' modifiers pages.
    execute if score $total minecraft_but.expansion matches 1.. run execute unless score $total minecraft_but.expansion matches 1.. run tellraw @s ["\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n",{"text":"---------------------------------------------","color":"#0F21C6"},"\\n",{"text":"←|","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/directory"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back to the modifiers page.","color":"#ECEFF5"}]}},{"text":" Modifier Categories","color":"#17B7CD","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/directory"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back to the modifiers page.","color":"#ECEFF5"}]}},"\\n",{"text":"---------------------------------------------","color":"#0F21C6"}]

    #> Turn off all modifiers
    tellraw @s [{"text":"[Turn off all modifiers]","color":"#DD3333","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/disable_all"}},"\\n"]

    #> Categories\n
`;
categories.forEach((category) => {
	description = parseDescription(category.description);
	text += outdent`
            # ${category.name}
            tellraw @s [{"text":" |→ ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[${description}]},"clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${category.id}"}},{"text":"${category.name}","color":"${category.color}","hoverEvent":{"action":"show_text","contents":[${description}]},"clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${category.id}"}}]


        `;

	let categoryFunction = outdent`
            #> minecraft_but.core:menu/modifiers/core/${category.id}
            # List of ${category.name} (${category.id}) modifiers. This file is automatically generated.
            # @within minecraft_but.core:menu/**
            # @context menu player
            
            #> Click sound
            function minecraft_but.core:menu/actions/click
            
            #> Update page score
            scoreboard players set @s minecraft_but.menu.page 12
            
            #> Disable sendCommandFeedback
            gamerule sendCommandFeedback false
            
            #> Set sendCommandFeedback back next tick
            schedule function minecraft_but.core:menu/actions/enable_feedback 1t append
            
            #> Header
            
            # If there are no expansion loaded, clicking top bar sends player back to main menu.
            # Doing this gets rid of that unnecessary step between directory and page 1 here.
            execute unless score $total minecraft_but.expansion matches 1.. run tellraw @s ["\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n",{"text":"---------------------------------------------","color":"#0F21C6"},"\\n",{"text":"←|","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/actions/back_to_main"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back to the main menu.","color":"#ECEFF5"}]}},{"text":" ${category.name}","color":"${category.color}","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/actions/back_to_main"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back to the main menu.","color":"#ECEFF5"}]}},"\\n",{"text":"---------------------------------------------","color":"#0F21C6"}]
            
            # If there is an expansion loaded, clicking top bar sends the player to the modifiers directory
            # which has links to the different expansion packs' modifiers pages.
            execute if score $total minecraft_but.expansion matches 1.. run execute unless score $total minecraft_but.expansion matches 1.. run tellraw @s ["\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n",{"text":"---------------------------------------------","color":"#0F21C6"},"\\n",{"text":"←|","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/directory"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back to the modifiers category page.","color":"#ECEFF5"}]}},{"text":" Modifier Categories","color":"#E4EB18","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/directory"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back to the modifiers category page.","color":"#ECEFF5"}]}},"\\n",{"text":"---------------------------------------------","color":"#0F21C6"}]
            
            #> Modifiers\n
        `;
	const modsInCategory = modifiers.filter(
		(modifier) => modifier.category === category.id
	);

	console.log(category.id + ' ' + modsInCategory.length);

	let categoryGradient = category.gradient;
	if (modsInCategory.length > 2) {
		categoryGradient = new Gradient()
			.setColorGradient(...category.gradient)
			.setMidpoint(modsInCategory.length - 2)
			.getColors();
		categoryGradient.unshift(category.gradient[0]);
		categoryGradient.push(category.gradient[1]);
	}

	for (let i = 0; i < modsInCategory.length; i++) {
		const modifier = modsInCategory[i];
		modifierDescription = parseDescription(modifier.description);

		if (
			(Object.values(modifier?.config).length > 0) |
			(modifier.difficulty === true)
		) {
			categoryFunction += outdent`
                    ## ${modifier.name} (${modifier.id})
                    execute unless score ${modifier.id} minecraft_but.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/on"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/config"}},{"text":"${modifier.name}","bold":false,"color":"${categoryGradient[i]}","hoverEvent": {"action":"show_text","contents":[${modifierDescription}]}}]\n\n

                    execute if score ${modifier.id} minecraft_but.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/off"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/config"}},{"text":"${modifier.name}","bold":false,"color":"${categoryGradient[i]}","hoverEvent": {"action":"show_text","contents":[${modifierDescription}]}}]\n\n
                `;
		} else {
			categoryFunction += outdent`
                    ## ${modifier.name} (${modifier.id})
                    execute unless score ${modifier.id} minecraft_but.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/on"}},{"text":"     ","hoverEvent": {"action":"show_text","contents":[${modifierDescription}]}},{"text":"${modifier.name}","bold":false,"color":"${categoryGradient[i]}","hoverEvent": {"action":"show_text","contents":[${modifierDescription}]}}]\n\n
                    execute if score ${modifier.id} minecraft_but.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/off"}},{"text":"     ","hoverEvent": {"action":"show_text","contents":[${modifierDescription}]}},{"text":"${modifier.name}","bold":false,"color":"${categoryGradient[i]}","hoverEvent": {"action":"show_text","contents":[${modifierDescription}]}}]\n\n
                `;
		}
	}

	fs.writeFileSync(
		path.join(coreDir, category.id + '.mcfunction'),
		categoryFunction
	);
});

text += outdent`
    
    # Newline
    tellraw @s [""]
`;

fs.writeFileSync(path.join(coreDir, 'categories.mcfunction'), text);

// For each modifier
modifiers.forEach((modifier) => {
	// ID of the modifier used as name in object
	// e.g. 'anvil_rain'

	// containing name, description, id, and category
	const { name, description, id, category, difficulty, config } = modifier;

	// Parent directory, directory of modifier
	// e.g. `../anvil_rain`
	const modifierDir = path.join(coreDir, `/${modifier.id}/`);

	// Create folder for modifier if folder doesn't exist
	if (fs.existsSync(modifierDir) === false) {
		fs.mkdirSync(modifierDir);
	}

	// If it's an invalid valid hex code, set it to default color
	let color = modifier.color;
	if (
		modifier.color == undefined ||
		/^#([a-f0-9]) {6}$/i.test(modifier.color) === false
	) {
		const color = '#20CBA8';
	}

	// Create folder
	if (fs.existsSync(modifierDir) === false) fs.mkdirSync(modifierDir);

	// Create "on" function
	fs.writeFileSync(
		path.join(modifierDir, `on.mcfunction`),
		`#> minecraft_but.core:menu/modifiers/core/${modifier.id}/on\n#Automatically generated toggle on function for ${modifier.id}\n# @within minecraft_but.core:menu/**\n# @context player\n\n# Toggle\nscoreboard players set ${modifier.id} minecraft_but.toggle 1\n\n# Run load function\nfunction minecraft_but.core:modifiers/${modifier.id}/load\n\n# Click sound\nfunction minecraft_but.core:menu/actions/click\n\n# Update menu\nfunction minecraft_but.core:menu/modifiers/core/${modifier.category}`
	);

	// Create "off" function
	fs.writeFileSync(
		path.join(modifierDir, `off.mcfunction`),
		`#> minecraft_but.core:menu/modifiers/core/${modifier.id}/off\n#Automatically generated toggle off function for ${modifier.id}\n# @within minecraft_but.core:menu/**\n# @context player\n\n# Toggle\nscoreboard players set ${modifier.id} minecraft_but.toggle 0\n\n# Run unload function\nfunction minecraft_but.core:modifiers/${modifier.id}/unload\n\n# Click sound\nfunction minecraft_but.core:menu/actions/click\n\n# Update menu\nfunction minecraft_but.core:menu/modifiers/core/${modifier.category}`
	);

	// Entry array of configs for modifier
	if (Object.values(config).length > 0) {
		const configs = Object.values(config);
		const hasConfig = true;

		// Create config page
		let configFile = outdent`
    #> minecraft_but.core:menu/modifiers/core/${modifier.id}/config
    # Config menu for ${modifier.id} made with
    # ../src/index.js
    #
    # @within minecraft_but.core:menu/**
    # @context player

    #> Disable sendCommandFeedback
    gamerule sendCommandFeedback false

    #> Set sendCommandFeedback back next tick
    schedule function minecraft_but.core:menu/actions/enable_feedback 1t append
        
    #> Header
    tellraw @s ["\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n",{"text":"---------------------------------------------","color":"#0F21C6"},"\\n",{"text":"←|","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.category}"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back.","color":"#ECEFF5"}]}}," ",{"text":"${modifier.name}","color":"${color}","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.category}"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back.","color":"#ECEFF5"}]}},{"text":" Config","color":"#17B7CD","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.category}"}},"\\n",{"text":"---------------------------------------------","color":"#0F21C6"}]

    #> Blacklist
    tellraw @p [{"text":"[","color":"#0F21C6","clickEvent":{"action":"suggest_command","value":"/tag player add minecraft_but.${modifier.id}.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\\n\\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}},{"text":"✎","color":"#0F21C6","clickEvent":{"action":"suggest_command","value":"/tag player add minecraft_but.${modifier.id}.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\\n\\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}},{"text":"] ","color":"#0F21C6","clickEvent":{"action":"suggest_command","value":"/tag player add minecraft_but.${modifier.id}.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\\n\\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}},{"text":"Blacklist player","color":"#ECEFF5","clickEvent":{"action":"suggest_command","value":"/tag player add minecraft_but.${modifier.id}.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\\n\\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}}]
    `;

		// If difficulty is enabled,
		if (difficulty === true) {
			// Define difficulty directory const for prettier code
			const difficultyDir = path.join(modifierDir, `/difficulty/`);

			// check if the "difficulty" directory exists.
			if (fs.existsSync(difficultyDir) === false) {
				// If it doesn't create it.
				fs.mkdirSync(difficultyDir);
			}
			/*
            Now that we know the difficulty directory exists, let's create the difficulty files.
            We're basically going to use a modified version of the "string" files.
            
            I know I could just use string for this, but that would require manually setting
            difficulty configs for each modifier, and considering that all difficulty files should
            be nearly identical and most modifiers should use difficulty settings, I think it's
            better to just code in direct support for difficulty
        */

			// Add difficulty tellraw to main config file
			configFile += outdent`
            \n\n##> Difficulty selector
            #> Global difficulty
            # Peaceful
            execute unless score difficulty.${modifier.id} minecraft_but.config matches 0..3 if score difficulty.global minecraft_but.config matches 0 run tellraw @s [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/difficulty/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/difficulty/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/difficulty/reset"}},{"text":" Difficulty: ","color":"#20CBA8"},{"text":"[←]  ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to decrease the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/difficulty/previous_difficulty"}},{"text":"Peaceful ☮","color":"#44F044","hoverEvent":{"action":"show_text","contents":[{"text":"Peaceful","color":"#44F044"},{"text":" is just as its name implies: peaceful! Is it perfectly easy and relaxing? Yes! Is it fun? Well...","color":"#ECEFF5"}]}},{"text":"  [→]","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to increase the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/difficulty/next_difficulty"}},"\\n"]
            # Easy
            execute unless score difficulty.${modifier.id} minecraft_but.config matches 0..3 if score difficulty.global minecraft_but.config matches 1 run tellraw @s [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/difficulty/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/difficulty/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/difficulty/reset"}},{"text":" Difficulty: ","color":"#20CBA8"},{"text":"[←]     ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to decrease the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/difficulty/previous_difficulty"}},{"text":"Easy ☺","color":"#3ED011","hoverEvent":{"action":"show_text","contents":[{"text":"Easy","color":"#3ED011"},{"text":" is the difficulty for people looking for a relaxed, casual experience. Don't listen to your friends! Oh, you don't have friends? Uh... Anyway, You're not a chicken! You're just...","color":"#ECEFF5"}]}},{"text":"     [→]","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to increase the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/difficulty/next_difficulty"}},"\\n"]
            # Normal
            execute unless score difficulty.${modifier.id} minecraft_but.config matches 0..3 if score difficulty.global minecraft_but.config matches 2 run tellraw @s [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/difficulty/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/difficulty/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/difficulty/reset"}},{"text":" Difficulty: ","color":"#20CBA8"},{"text":"[←]   ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to decrease the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/difficulty/previous_difficulty"}},{"text":"Normal ☯","color":"#E4EB18","hoverEvent":{"action":"show_text","contents":[{"text":"Normal","color":"#E4EB18"},{"text":" is the default difficulty with modifiers just the way they were intended — not too easy but not too hard.","color":"#ECEFF5"}]}},{"text":"    [→]","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to increase the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/difficulty/next_difficulty"}},"\\n"]
            # Hard
            execute unless score difficulty.${modifier.id} minecraft_but.config matches 0..3 if score difficulty.global minecraft_but.config matches 3 run tellraw @s [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/difficulty/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/difficulty/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/difficulty/reset"}},{"text":" Difficulty: ","color":"#20CBA8"},{"text":"[←]     ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to decrease the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/difficulty/previous_difficulty"}},{"text":"Hard ☠","color":"#FF0000","hoverEvent":{"action":"show_text","contents":[{"text":"Hard","color":"#FF0000"},{"text":" is the most brutal difficulty for people who like absolute destruction and chaos. Destruction? Certainly. Death? More than you can count. Lag? Oh yeah! Fun? ¯\\\\_(ツ)_/¯","color":"#ECEFF5"}]}},{"text":"     [→]","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to increase the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/difficulty/next_difficulty"}},"\\n"]

            #> Modifier-specific difficulty (local difficulty)
            execute if score difficulty.${modifier.id} minecraft_but.config matches 0 run tellraw @s [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/difficulty/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/difficulty/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/difficulty/reset"}},{"text":" Difficulty: ","color":"#20CBA8"},{"text":"[←]  ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to decrease the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/difficulty/previous_difficulty"}},{"text":"Peaceful ☮","color":"#44F044","hoverEvent":{"action":"show_text","contents":[{"text":"Peaceful","color":"#44F044"},{"text":" is just as its name implies: peaceful! Is it perfectly easy and relaxing? Yes! Is it fun? Well...","color":"#ECEFF5"}]}},{"text":"  [→]","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to increase the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/difficulty/next_difficulty"}},"\\n"]
            execute if score difficulty.${modifier.id} minecraft_but.config matches 1 run tellraw @s [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/difficulty/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/difficulty/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/difficulty/reset"}},{"text":" Difficulty: ","color":"#20CBA8"},{"text":"[←]     ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to decrease the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/difficulty/previous_difficulty"}},{"text":"Easy ☺","color":"#3ED011","hoverEvent":{"action":"show_text","contents":[{"text":"Easy","color":"#3ED011"},{"text":" is the difficulty for people looking for a relaxed, casual experience. Don't listen to your friends! Oh, you don't have friends? Uh... Anyway, You're not a chicken! You're just...","color":"#ECEFF5"}]}},{"text":"     [→]","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to increase the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/difficulty/next_difficulty"}},"\\n"]
            execute if score difficulty.${modifier.id} minecraft_but.config matches 2 run tellraw @s [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/difficulty/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/difficulty/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/difficulty/reset"}},{"text":" Difficulty: ","color":"#20CBA8"},{"text":"[←]   ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to decrease the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/difficulty/previous_difficulty"}},{"text":"Normal ☯","color":"#E4EB18","hoverEvent":{"action":"show_text","contents":[{"text":"Normal","color":"#E4EB18"},{"text":" is the default difficulty with modifiers just the way they were intended — not too easy but not too hard.","color":"#ECEFF5"}]}},{"text":"    [→]","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to increase the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/difficulty/next_difficulty"}},"\\n"]
            execute if score difficulty.${modifier.id} minecraft_but.config matches 3 run tellraw @s [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/difficulty/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/difficulty/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/difficulty/reset"}},{"text":" Difficulty: ","color":"#20CBA8"},{"text":"[←]     ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to decrease the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/difficulty/previous_difficulty"}},{"text":"Hard ☠","color":"#FF0000","hoverEvent":{"action":"show_text","contents":[{"text":"Hard","color":"#FF0000"},{"text":" is the most brutal difficulty for people who like absolute destruction and chaos. Destruction? Certainly. Death? More than you can count. Lag? Oh yeah! Fun? ¯\\\\_(ツ)_/¯","color":"#ECEFF5"}]}},{"text":"     [→]","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to increase the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/difficulty/next_difficulty"}},"\\n"]\n`;

			/* Previous difficulty function

                e.g. minecraft_but.core:menu/modifiers/core/anvil_rain/difficulty/previous_difficulty.mcfunction */
			fs.writeFileSync(
				path.join(
					modifierDir,
					`/difficulty/previous_difficulty.mcfunction`
				),
				outdent`
                        #> minecraft_but.core:menu/${modifier.id}/difficulty/previous_difficulty
                        # Go to the previous difficulty for ${modifier.id}
                        # Generated with the script at '../src/index.js'
                        #
                        # @within minecraft_but.core:menu/modifiers/core/${modifier.id}/**
                        # @context player

                        #> Click sound
                        function minecraft_but.core:menu/actions/click

                        #> If difficulty isn't set, get from global
                        execute unless score difficulty.${modifier.id} minecraft_but.config matches 0..3 run scoreboard players operation difficulty.${modifier.id} minecraft_but.config = difficulty.global minecraft_but.config

                        #> Set difficulty to temp score
                        scoreboard players operation #temp minecraft_but.config = difficulty.${modifier.id} minecraft_but.config

                        #> Decrease temp score
                        scoreboard players remove #temp minecraft_but.config 1

                        #> If it goes below 0, set to 3 (Peaceful to Hard)
                        execute if score #temp minecraft_but.config matches ..-1 run scoreboard players set #temp minecraft_but.config 3

                        #> Set new difficulty temp score to difficulty
                        scoreboard players operation difficulty.${modifier.id} minecraft_but.config = #temp minecraft_but.config

                        #> Update menu
                        function minecraft_but.core:menu/modifiers/core/${modifier.id}/config
                `
			);

			/* Next difficulty function

                e.g. minecraft_but.core:menu/modifiers/core/anvil_rain/difficulty/next_difficulty.mcfunction */
			fs.writeFileSync(
				path.join(
					modifierDir,
					`/difficulty/next_difficulty.mcfunction`
				),
				outdent`
                    #> minecraft_but.core:menu/${modifier.id}/difficulty/next_difficulty
                    # Go to the next difficulty for ${modifier.id}
                    # Generated with the script at '../src/index.js'
                    #
                    # @within minecraft_but.core:menu/modifiers/core/${modifier.id}/**
                    # @context player

                    #> Click sound
                    function minecraft_but.core:menu/actions/click

                    #> If difficulty isn't set, get from global
                    execute unless score difficulty.${modifier.id} minecraft_but.config matches 0..3 run scoreboard players operation difficulty.${modifier.id} minecraft_but.config = difficulty.global minecraft_but.config

                    #> Set difficulty to temp score
                    scoreboard players operation #temp minecraft_but.config = difficulty.${modifier.id} minecraft_but.config

                    #> Add temp score
                    scoreboard players add #temp minecraft_but.config 1

                    #> If it goes above 3, set to 0 (Hard to Peaceful)
                    execute if score #temp minecraft_but.config matches 4.. run scoreboard players set #temp minecraft_but.config 0

                    #> Set new difficulty temp score to difficulty
                    scoreboard players operation difficulty.${modifier.id} minecraft_but.config = #temp minecraft_but.config

                    #> Update menu
                    function minecraft_but.core:menu/modifiers/core/${modifier.id}/config
                    `
			);

			/* Write reset function
            for resetting score

            e.g. minecraft_but.core:menu/modifiers/core/anvil_rain/rate/reset.mcfunction */
			fs.writeFileSync(
				path.join(modifierDir, `/difficulty/reset.mcfunction`),
				outdent`
                #> minecraft_but.core:menu/modifiers/core/${modifier.id}/difficulty/reset
                # Reset ${modifier.id} difficulty to global difficulty
                # Generated with the script at '../src/index.js'
                #
                # @within minecraft_but.core:menu/modifiers/core/${modifier.id}/**
                # @context player

                #> Click sound
                function minecraft_but.core:menu/actions/click

                #> Reset to global difficulty
                scoreboard players operation difficulty.${modifier.id} minecraft_but.config = difficulty.global minecraft_but.config

                #> Update menu
                function minecraft_but.core:menu/modifiers/core/${modifier.id}/config
                `
			);
		}

		// For each config
		configs.forEach((cf) => {
			// ID of config value
			// e.g. 'rate'
			const id = cf.id;

			/* Config object containing a proper name of config value,
        description of config value, an id for namespaces, the type
        of the config value (between number, range, string, and toggle),
        and various type-specific values such as min and max for range/string
        and an array of different strings for string type. */

			// Function scoreboard enum namespace
			// e.g. anvil_rain.rate
			const namespace = `${modifier.id}.${cf.id}`;

			// Relative path for config directory
			// e.g. '../anvil_rain/rate/`
			const configDir = path.join(modifierDir, `/${cf.id}/`);

			// Get modifier color
			let color = cf.color;
			// If it's an invalid valid hex code, set it to default color
			if (color == undefined || /^#([a-f0-9]){6}$/i.test(color) === false)
				color = '#ECEFF5';

			// Config types
			switch (cf.type) {
				case 'number':
					// Add tellraw section for interacting with config
					// to main config function
					configFile += outdent`
                        \n\n#> ${cf.name}
                        # ${cf.description}
                        # ID: ${cf.id}
                        # Type: ${cf.type}
                        execute unless score ${namespace} minecraft_but.config matches -2147483648..2147483647 run tellraw @p ["",{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/reset"}},{"text":" ${cf.name}: ","color":"${cf.color}","hoverEvent":{"action":"show_text","contents":[{"text":"${cf.description}","color":"#ECEFF5"}]}},{"text":"[«] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/5down"}},{"text":" [‹] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/1down"}},{"score":{"name":"${namespace}","objective":"minecraft_but.default"},"color":"#ECEFF5"},{"text":" [›] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/1up"}},{"text":" [»]","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/5up"}}]
                                    
                        execute if score ${namespace} minecraft_but.config matches -2147483648..2147483647 run tellraw @p ["",{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/reset"}},{"text":" ${cf.name}: ","color":"${color}","hoverEvent":{"action":"show_text","contents":[{"text":"${cf.description}","color":"#ECEFF5"}]}},{"text":"[«] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/5down"}},{"text":" [‹] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/1down"}},{"score":{"name":"${namespace}","objective":"minecraft_but.config"},"color":"#ECEFF5"},{"text":" [›] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/1up"}},{"text":" [»]","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/5up"}}]
                        `;

					// Create folder for config if it doesn't exist
					if (fs.existsSync(configDir) === false)
						fs.mkdirSync(configDir);

					/* Write 1up function
                                    for increasing score by 1
                                
                                    e.g. minecraft_but.core:menu/modifiers/core/anvil_rain/rate/1up.mcfunction */
					fs.writeFileSync(
						path.join(configDir, '/1up.mcfunction'),
						`#> minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/1up
                    # Increase ${modifier.id} config score ${cf.id} by 1
                    # Generated with the script at '../src/index.js'
                    #
                    # @within minecraft_but.core:menu/modifiers/core/${modifier.id}/**
                    # @context player

                    #> Add 1 to score
                    scoreboard players add ${namespace} minecraft_but.config 1

                    #> Click sound
                    function minecraft_but.core:menu/actions/click

                    #> Update menu
                    function minecraft_but.core:menu/modifiers/core/${modifier.id}/config
                `
					);

					/* Write 5up function
            for increasing score by 5
            
            e.g. minecraft_but.core:menu/modifiers/core/anvil_rain/rate/5up.mcfunction */
					fs.writeFileSync(
						path.join(configDir, '5up.mcfunction'),
						outdent`
                    #> minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/5up
                    # Increase ${modifier.id} config score ${cf.id} by 5
                    # Generated with the script at '../src/index.js'
                    #
                    # @within minecraft_but.core:menu/modifiers/core/${modifier.id}/**
                    # @context player

                    #> Add 5 to score
                    scoreboard players add ${namespace} minecraft_but.config 5

                    #> Click sound
                    function minecraft_but.core:menu/actions/click

                    #> Update menu
                    function minecraft_but.core:menu/modifiers/core/${modifier.id}/config
                `
					);

					/* Write 5down function
            for decreasing score by 5
            
            e.g. minecraft_but.core:menu/modifiers/core/anvil_rain/rate/5down.mcfunction */
					fs.writeFileSync(
						path.join(configDir, '/5down.mcfunction'),
						outdent`
                #> minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/5down
                # Decrease ${modifier.id} config score ${cf.id} by 5
                # Generated with the script at '../src/index.js'
                #
                # @within minecraft_but.core:menu/modifiers/core/${modifier.id}/**
                # @context player

                #> Remove 5 from score
                scoreboard players remove ${namespace} minecraft_but.config 5

                #> Click sound
                function minecraft_but.core:menu/actions/click

                #> Update menu
                function minecraft_but.core:menu/modifiers/core/${modifier.id}/config
                `
					);

					/* Write 1down function
            for decreasing score by 1
            
            e.g. minecraft_but.core:menu/modifiers/core/anvil_rain/rate/1down.mcfunction */
					fs.writeFileSync(
						path.join(configDir, '/1down.mcfunction'),
						outdent`
                #> minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/1down
                # Decrease ${modifier.id} config score ${cf.id} by 1
                # Generated with the script at '../src/index.js'
                #
                # @within minecraft_but.core:menu/modifiers/core/${modifier.id}/**
                # @context player

                #> Remove 1 from score
                scoreboard players remove ${namespace} minecraft_but.config 1

                #> Click sound
                function minecraft_but.core:menu/actions/click

                #> Update menu
                function minecraft_but.core:menu/modifiers/core/${modifier.id}/config
                `
					);

					/* Write reset function
            for resetting score

            e.g. minecraft_but.core:menu/modifiers/core/anvil_rain/rate/reset.mcfunction */
					fs.writeFileSync(
						path.join(configDir, '/reset.mcfunction'),
						outdent`
                #> minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/reset
                # Reset ${modifier.id} config score ${cf.id} to default
                # Generated with the script at '../src/index.js'
                #
                # @within minecraft_but.core:menu/modifiers/core/${modifier.id}/**
                # @context player

                #> Reset
                # If default was set, set score to default
                execute if score ${namespace} minecraft_but.default matches -2147483648..2147483647 run scoreboard players operation ${namespace} minecraft_but.config = ${namespace} minecraft_but.default
                # If default wasn't set, set score to 1
                execute unless score ${namespace} minecraft_but.default matches -2147483648..2147483647 run scoreboard players set ${namespace} minecraft_but.config 1

                #> Click sound
                function minecraft_but.core:menu/actions/click

                #> Update menu
                function minecraft_but.core:menu/modifiers/core/${modifier.id}/config
                `
					);
					break;
				case 'range':
					// Add tellraw section for interacting with config
					// to main config function
					configFile += outdent`
                    \n\n#> ${cf.name}
                    # ${cf.description}
                    # ID: ${cf.id}
                    # Type: ${cf.type}
                    execute unless score ${namespace} minecraft_but.config matches -2147483648..2147483647 run tellraw @p ["",{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/reset"}},{"text":" ${cf.name}: ","color":"${color}","hoverEvent":{"action":"show_text","contents":[{"text":"${cf.description}","color":"#ECEFF5"}]}},{"text":"[«] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/5down"}},{"text":" [‹] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/1down"}},{"score":{"name":"${namespace}","objective":"minecraft_but.default"},"color":"#ECEFF5"},{"text":" [›] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/1up"}},{"text":" [»]","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/5up"}}]
                                
                    execute if score ${namespace} minecraft_but.config matches -2147483648..2147483647 run tellraw @p ["",{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/reset"}},{"text":" ${cf.name}: ","color":"${color}","hoverEvent":{"action":"show_text","contents":[{"text":"${cf.description}","color":"#ECEFF5"}]}},{"text":"[«] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/5down"}},{"text":" [‹] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/1down"}},{"score":{"name":"${namespace}","objective":"minecraft_but.config"},"color":"#ECEFF5"},{"text":" [›] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/1up"}},{"text":" [»]","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/5up"}}]`;

					// Create folder for config if it doesn't exist
					if (fs.existsSync(configDir) === false)
						fs.mkdirSync(configDir);

					/* Write 1up function
                                    for increasing score by 1
                                
                                    e.g. minecraft_but.core:menu/modifiers/core/anvil_rain/rate/1up.mcfunction */
					fs.writeFileSync(
						path.join(configDir, '/1up.mcfunction'),
						`#> minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/1up
                    # Increase ${modifier.id} config score ${cf.id} by 1
                    # Generated with the script at '../src/index.js'
                    #
                    # @within minecraft_but.core:menu/modifiers/core/${modifier.id}/**
                    # @context player

                    #> Add 1 to score
                    scoreboard players add ${namespace} minecraft_but.config 1

                    #> If number outside range, reset score
                    # If below minimum, set to max
                    execute if score ${namespace} minecraft_but.config < #${namespace}_min minecraft_but.default run scoreboard players operation ${namespace} minecraft_but.config = #${namespace}_max minecraft_but.default
                    # If above maximum, set to min
                    execute if score ${namespace} minecraft_but.config > #${namespace}_max minecraft_but.default run scoreboard players operation ${namespace} minecraft_but.config = #${namespace}_min minecraft_but.default

                    #> Click sound
                    function minecraft_but.core:menu/actions/click

                    #> Update menu
                    function minecraft_but.core:menu/modifiers/core/${modifier.id}/config
                `
					);

					/* Write 5up function
                for increasing score by 5
            
                e.g. minecraft_but.core:menu/modifiers/core/anvil_rain/rate/5up.mcfunction */
					fs.writeFileSync(
						path.join(configDir, '/5up.mcfunction'),
						outdent`
                        #> minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/5up
                        # Increase ${modifier.id} config score ${cf.id} by 5
                        # Generated with the script at '../src/index.js'
                        #
                        # @within minecraft_but.core:menu/modifiers/core/${modifier.id}/**
                        # @context player

                        #> Add 5 to score
                        scoreboard players add ${namespace} minecraft_but.config 5

                        #> If number outside range, reset score
                        # If below minimum, set to max
                        execute if score ${namespace} minecraft_but.config < #${namespace}_min minecraft_but.default run scoreboard players operation ${namespace} minecraft_but.config = #${namespace}_max minecraft_but.default
                        # If above maximum, set to min
                        execute if score ${namespace} minecraft_but.config > #${namespace}_max minecraft_but.default run scoreboard players operation ${namespace} minecraft_but.config = #${namespace}_min minecraft_but.default

                        #> Click sound
                        function minecraft_but.core:menu/actions/click

                        #> Update menu
                        function minecraft_but.core:menu/modifiers/core/${modifier.id}/config
                    `
					);

					/* Write 1down function
                for decreasing score by 1
            
                e.g. minecraft_but.core:menu/modifiers/core/anvil_rain/rate/1down.mcfunction */
					fs.writeFileSync(
						path.join(configDir, '/1down.mcfunction'),
						outdent`
                    #> minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/1down
                    # Increase ${modifier.id} config score ${cf.id} by 1
                    # Generated with the script at '../src/index.js'
                    #
                    # @within minecraft_but.core:menu/modifiers/core/${modifier.id}/**
                    # @context player

                    #> Remove 1 from score
                    scoreboard players remove ${namespace} minecraft_but.config 1

                    #> If number outside range, reset score
                    # If below minimum, set to max
                    execute if score ${namespace} minecraft_but.config < #${namespace}_min minecraft_but.default run scoreboard players operation ${namespace} minecraft_but.config = #${namespace}_max minecraft_but.default
                    # If above maximum, set to min
                    execute if score ${namespace} minecraft_but.config > #${namespace}_max minecraft_but.default run scoreboard players operation ${namespace} minecraft_but.config = #${namespace}_min minecraft_but.default

                    #> Click sound
                    function minecraft_but.core:menu/actions/click

                    #> Update menu
                    function minecraft_but.core:menu/modifiers/core/${modifier.id}/config
                    `
					);

					/* Write 5down function
                for decreasing score by 5
            
                e.g. minecraft_but.core:menu/modifiers/core/anvil_rain/rate/5down.mcfunction */
					fs.writeFileSync(
						path.join(configDir, '/5down.mcfunction'),
						outdent`
                        #> minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/5down
                        # Increase ${modifier.id} config score ${cf.id} by 5
                        # Generated with the script at '../src/index.js'
                        #
                        # @within minecraft_but.core:menu/modifiers/core/${modifier.id}/**
                        # @context player

                        #> Remove 5 from score
                        scoreboard players remove ${namespace} minecraft_but.config 5

                        #> If number outside range, reset score
                        # If below minimum, set to max
                        execute if score ${namespace} minecraft_but.config < #${namespace}_min minecraft_but.default run scoreboard players operation ${namespace} minecraft_but.config = #${namespace}_max minecraft_but.default
                        # If above maximum, set to min
                        execute if score ${namespace} minecraft_but.config > #${namespace}_max minecraft_but.default run scoreboard players operation ${namespace} minecraft_but.config = #${namespace}_min minecraft_but.default

                        #> Click sound
                        function minecraft_but.core:menu/actions/click

                        #> Update menu
                        function minecraft_but.core:menu/modifiers/core/${modifier.id}/config
                    `
					);

					/* Write reset function
            for resetting score

            e.g. minecraft_but.core:menu/modifiers/core/anvil_rain/rate/reset.mcfunction */
					fs.writeFileSync(
						path.join(configDir, '/reset.mcfunction'),
						outdent`
                    #> minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/reset
                    # Reset ${modifier.id} config score ${cf.id} to default
                    # Generated with the script at '../src/index.js'
                    #
                    # @within minecraft_but.core:menu/modifiers/core/${modifier.id}/**
                    # @context player

                    #> Reset
                    # If default was set, set score to default
                    execute if score ${namespace} minecraft_but.default matches -2147483648..2147483647 run scoreboard players operation ${namespace} minecraft_but.config = ${namespace} minecraft_but.default
                    # If default wasn't set, set score to 1
                    execute unless score ${namespace} minecraft_but.default matches -2147483648..2147483647 run scoreboard players set ${namespace} minecraft_but.config 1

                    #> Click sound
                    function minecraft_but.core:menu/actions/click

                    #> Update menu
                    function minecraft_but.core:menu/modifiers/core/${modifier.id}/config
                `
					);
					break;
				case 'string':
					// Add tellraw section for interacting with config
					// to main config function
					configFile += outdent`
                    \n\n#> ${cf.name}
                    # ${cf.description}
                    # ID: ${cf.id}
                    # Type: ${cf.type}
                    execute unless data storage minecraft_but.core:menu/modifiers/core/${modifier.id} ${cf.id} run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/reset"}},{"text":" ${cf.name}: ","color":"${color}","hoverEvent":{"action":"show_text","contents":[{"text":"${cf.description}","color":"#ECEFF5"}]}},{"text":" [←] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/down"}},{"text":"${cf.strings[0]}","color":"#ECEFF5"},{"text":" [→] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/up"}}]
                    # If value is set, display value
                    execute if data storage minecraft_but.core:menu/modifiers/core/${modifier.id} ${cf.id} run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/reset"}},{"text":" ${cf.name}: ","color":"${color}","hoverEvent":{"action":"show_text","contents":[{"text":"${cf.description}","color":"#ECEFF5"}]}},{"text":" [←] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/down"}},{"nbt":"${cf.id}","storage":"minecraft_but.core:menu/modifiers/core/${modifier.id}","color":"#ECEFF5"},{"text":" [→] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/up"}}]
                `;

					// Create folder for config if it doesn't exist
					if (fs.existsSync(configDir) === false)
						fs.mkdirSync(configDir);

					/* Write up function
                for increasing score by 1
            
                e.g. minecraft_but.core:menu/modifiers/core/anvil_rain/rate/up.mcfunction */
					fs.writeFileSync(
						path.join(configDir, '/up.mcfunction'),
						outdent`
                        #> minecraft_but.core:menu/modifiers/core/${
							modifier.id
						}/${cf.id}/up
                        # Increase ${modifier.id} config score ${cf.id} by 1
                        # Generated with the script at '../src/index.js'
                        #
                        # @within minecraft_but.core:menu/modifiers/core/${
							modifier.id
						}/**
                        # @context player

                        #> Add 1 to score
                        scoreboard players add ${namespace} minecraft_but.config 1

                        #> If number outside range, reset score
                        # If below minimum, set to max
                        execute if score ${namespace} minecraft_but.config matches ..0 run scoreboard players set ${namespace} minecraft_but.config ${
							cf.strings.length + 1
						}
                        execute if score ${namespace} minecraft_but.config matches ${
							cf.strings.length + 1
						}.. run scoreboard players set ${namespace} minecraft_but.config 1

                        #> Set string based on score
                        function minecraft_but.core:menu/modifiers/core/${
							modifier.id
						}/${cf.id}/update_string

                        #> Click sound
                        function minecraft_but.core:menu/actions/click

                        #> Update menu
                        function minecraft_but.core:menu/modifiers/core/${
							modifier.id
						}/config
                    `
					);

					/* Write down function
                for decreasing score by 1
            
                e.g. minecraft_but.core:menu/modifiers/core/anvil_rain/rate/down.mcfunction */
					fs.writeFileSync(
						path.join(configDir, '/down.mcfunction'),
						outdent`
                        #> minecraft_but.core:menu/modifiers/core/${
							modifier.id
						}/${cf.id}/down
                        # Increase ${modifier.id} config score ${cf.id} by 1
                        # Generated with the script at '../src/index.js'
                        #
                        # @within minecraft_but.core:menu/modifiers/core/${
							modifier.id
						}/**
                        # @context player

                        #> Remove 1 from score
                        scoreboard players remove ${namespace} minecraft_but.config 1

                        #> If number outside range, reset score
                        # If below minimum, set to max
                        execute if score ${namespace} minecraft_but.config matches ..0 run scoreboard players set ${namespace} minecraft_but.config ${
							cf.strings.length + 1
						}
                        execute if score ${namespace} minecraft_but.config matches ${
							cf.strings.length + 1
						}.. run scoreboard players set ${namespace} minecraft_but.config 1

                        #> Set string based on score
                        function minecraft_but.core:menu/modifiers/core/${
							modifier.id
						}/${cf.id}/update_string

                        #> Click sound
                        function minecraft_but.core:menu/actions/click

                        #> Update menu
                        function minecraft_but.core:menu/modifiers/core/${
							modifier.id
						}/config
                    `
					);

					/* Write update_string function
            for updating string based on score

            e.g. minecraft_but.core:menu/modifiers/core/anvil_rain/rate/update_string.mcfunction */

					// Add header
					let update_string = outdent`
                #> minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/update_string
                # Update displayed string based on score ${namespace}
                # the script in ../src
                #
                # @within minecraft_but.core:menu/modifiers/core/${modifier.id}/**
                # @context player

                #> Update
            `;

					// Add command for each array element
					for (let i = 0; i < cf.strings.length; i++) {
						const element = cf.strings[i];
						update_string +=
							`\nexecute if score ${namespace} minecraft_but.config matches ${
								i + 1
							} run ` +
							`data modify storage minecraft_but.core:menu/modifiers/core/${modifier.id} ${cf.id} set value ${cf.strings[i]}`;
					}

					// Add footer
					update_string += outdent`
                \n\n#> Click sound
                function minecraft_but.core:menu/actions/click
                            
                #> Update menu
                function minecraft_but.core:menu/modifiers/core/${modifier.id}/config`;

					// Write to file
					fs.writeFileSync(
						path.join(configDir, '/update_String.mcfunction'),
						update_string
					);

					/* Write reset function
                            for resetting score

                            e.g. minecraft_but.core:menu/modifiers/core/anvil_rain/rate/reset.mcfunction */
					fs.writeFileSync(
						path.join(configDir, '/reset.mcfunction'),
						outdent`
                                    #> minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/reset
                                    # Reset ${modifier.id} config score ${cf.id} to default
                                    # Generated with the script at '../src/index.js'
                                    #
                                    # @within minecraft_but.core:menu/modifiers/core/${modifier.id}/**
                                    # @context player

                                    #> Reset
                                    # If default was set, set score to default
                                    execute if score ${namespace} minecraft_but.default matches -2147483648..2147483647 run scoreboard players operation ${namespace} minecraft_but.config = ${namespace} minecraft_but.default
                                    # If default wasn't set, set score to 1
                                    execute unless score ${namespace} minecraft_but.default matches -2147483648..2147483647 run scoreboard players set ${namespace} minecraft_but.config 1

                                    #> Click sound
                                    function minecraft_but.core:menu/actions/click

                                    #> Update string
                                    function minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/update_string

                                    #> Update menu
                                    function minecraft_but.core:menu/modifiers/core/${modifier.id}/config
                                `
					);
					break;
				case 'toggle':
					// Add tellraw section for interacting with config
					// to main config function
					configFile += outdent`
                    \n\n#> ${cf.name}
                    # ${cf.description}
                    # ID: ${cf.id}
                    # Type: ${cf.type}

                    # If config is set, show toggle based on config
                    execute if score ${namespace} minecraft_but.config matches ..0 run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/toggle"}},{"text":" [✖] ","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/toggle"}},{"text":"${cf.name}","color":"${color}","hoverEvent":{"action":"show_text","contents":[{"text":"${cf.description}","color":"#ECEFF5"}]}}]
                    execute if score ${namespace} minecraft_but.config matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/toggle"}},{"text":" [✔] ","color":"#3ED011","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/toggle"}},{"text":"${cf.name}","color":"${color}","hoverEvent":{"action":"show_text","contents":[{"text":"${cf.description}","color":"#ECEFF5"}]}}]

                    # If no config is set, show togglebased on default
                    execute unless score ${namespace} minecraft_but.config matches -2147483648..2147483647 unless score ${namespace} minecraft_but.default matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/toggle"}},{"text":" [✖] ","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/toggle"}},{"text":"${cf.name}","color":"${color}","hoverEvent":{"action":"show_text","contents":[{"text":"${cf.description}","color":"#ECEFF5"}]}}]
                    execute unless score ${namespace} minecraft_but.config matches -2147483648..2147483647 if score ${namespace} minecraft_but.default matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/toggle"}},{"text":" [✔] ","color":"#3ED011","clickEvent":{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/toggle"}},{"text":"${cf.name}","color":"${color}","hoverEvent":{"action":"show_text","contents":[{"text":"${cf.description}","color":"#ECEFF5"}]}}]
                `;

					// Create folder for config if it doesn't exist
					if (fs.existsSync(configDir) === false)
						fs.mkdirSync(configDir);

					/* Write toggle function

                e.g. minecraft_but.core:menu/modifiers/core/anvil_rain/rate/toggle.mcfunction */
					fs.writeFileSync(
						path.join(configDir, '/toggle.mcfunction'),
						outdent`
                        #> minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/toggle
                        # Toggle ${modifier.id} config score ${cf.id} between 0 and 1
                        # Generated with the script at '../src/index.js'
                        #
                        # @within minecraft_but.core:menu/modifiers/core/${modifier.id}/**
                        # @context player

                        # Add score
                        scoreboard players add ${namespace} minecraft_but.config 1

                        # If score goes above 1, set it to 0
                        execute if score ${namespace} minecraft_but.config matches 2.. run scoreboard players set ${namespace} minecraft_but.config 0

                        # Click sound
                        function minecraft_but.core:menu/actions/click

                        # Update menu
                        function minecraft_but.core:menu/modifiers/core/${modifier.id}/config
                        `
					);

					/* Write reset function
            for resetting score

            e.g. minecraft_but.core:menu/modifiers/core/anvil_rain/rate/reset.mcfunction */
					fs.writeFileSync(
						path.join(configDir, '/reset.mcfunction'),
						outdent`
                    #> minecraft_but.core:menu/modifiers/core/${modifier.id}/${cf.id}/reset
                    # Reset ${modifier.id} config score ${cf.id} to default
                    # Generated with the script at '../src/index.js'
                    #
                    # @within minecraft_but.core:menu/modifiers/core/${modifier.id}/**
                    # @context player

                    #> Reset
                    # If default was set, set score to default
                    execute if score ${namespace} minecraft_but.default matches -2147483648..2147483647 run scoreboard players operation ${namespace} minecraft_but.config = ${namespace} minecraft_but.default
                    # If default wasn't set, set score to 0
                    execute unless score ${namespace} minecraft_but.default matches -2147483648..2147483647 run scoreboard players set ${namespace} minecraft_but.config 0

                    #> Click sound
                    function minecraft_but.core:menu/actions/click

                    #> Update menu
                    function minecraft_but.core:menu/modifiers/core/${modifier.id}/config
                `
					);
					break;

				default:
					// If invalid config type was given, log error
					console.error(
						`Invalid config type '${cf.type}' in ${modifier.id}.${cf.id}!`
					);
					break;
			}
		});

		// Write config page since all configs are added
		fs.writeFileSync(
			path.join(modifierDir, '/config.mcfunction'),
			configFile
		);
	} else {
		const hasConfig = false;
	}
});

let enableModifiersFunction = '';
for (let i = 0; i < modifiers.length; i++) {
	enableModifiersFunction += `execute if score $out random matches ${
		i + 1
	} run scoreboard players set ${
		modifiers[i].id
	} minecraft_but.random.toggle 1\n`;
}
fs.writeFileSync(
	path.join(namespaceDir, '/random/enable_modifiers.mcfunction'),
	enableModifiersFunction
);

fs.writeFileSync(
	path.join(namespaceDir, '/random/set_total_modifiers.mcfunction'),
	outdent`
        #> minecraft_but.core:random/set_total_modifiers
        # Set total modifiers. Run on load.
        # @within minecraft_but.core:init

        scoreboard players set #total_modifiers minecraft_but.toggle ${modifiers.length}
    `
);

let modifiersOffFunction = outdent`
    #> minecraft_but.core:modifiers/off
    #
    # If modifiers are turned off, run off functions.
    #
    # This is for modifiers which need clean up after
    # being turned off, including cleaning up
    # lasting markers (markers which last more than one tick),
    # removing old tags, and clearing scoreboards.
    #
    # This script is automatically generated.
    #
    # @within minecraft_but.core:**
    # @context root
    # @input
    #   score <modifier> minecraft_but.toggle
    #       This represents any modifier's boolean value for if it is enabled or disabled.
    #   score #<modifier> minecraft_but.toggle
    #       The value of the modifier in the previous tick used for comparing to
    #       current tick.\n\n
`;

modifiers.forEach((modifier) => {
	modifiersOffFunction += outdent`
        # If ${modifier.id} was on but is now off, run clean-up off function
        execute if score #${modifier.id} minecraft_but.toggle matches 1 if score ${modifier.id} minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/${modifier.id}/off
        # Set its status to future old status
        scoreboard players operation #${modifier.id} minecraft_but.toggle = ${modifier.id} minecraft_but.toggle\n\n
    `;
});

fs.writeFileSync(
	path.join(namespaceDir, '/modifiers/off.mcfunction'),
	modifiersOffFunction
);

let manualFunction = outdent`
    #> minecraft_but.core:modifiers/manual
    # Run modifiers if they're enabled on manual mode
    # @within minecraft_but.core:modifiers/directory
    # @context root

    #> Update modifier total
    #function minecraft_but.core:modifiers/manual_total

    #> Run modifiers\n
`;

modifiers.forEach((modifier) => {
	manualFunction += `execute if score ${modifier.id} minecraft_but.toggle matches 1 run function minecraft_but.core:modifiers/${modifier.id}/main\n`;
});

fs.writeFileSync(
	path.join(namespaceDir, '/modifiers/manual.mcfunction'),
	manualFunction
);

// Load functions
let loadFunction =
    outdent`#> minecraft_but.core:modifiers/load
    # Directory for modifier load files which
    # create scoreboards and manage default configs
    # @within minecraft_but.core:load
    # @context root\n\n\n`

modifiers.forEach((modifier) => {
    const filepath = path.join(namespaceDir, `/modifiers/${modifier.id}/load.mcfunction`);
    console.log(filepath)
    if (fs.existsSync(filepath)) {
        loadFunction += `function minecraft_but.core:modifiers/${modifier.id}/load\n`;
    }
})

fs.writeFileSync(
    path.join(namespaceDir, '/modifiers/load.mcfunction'),
    loadFunction
)

console.log('Wrote files!');
