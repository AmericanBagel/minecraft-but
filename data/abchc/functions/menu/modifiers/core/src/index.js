// Require deps
const fs = require('fs');
const Gradient = require('javascript-color-gradient');
const { colorGradient } = require('javascript-color-gradient');
const outdent = require('outdent')

// Require modifiers JSON
const modifiers = require('./modifiers.json');

// Convert modifiers object to array to use forEach
const entries = Object.entries(modifiers)

// For each modifier
entries.forEach(element => {
    // ID of the modifier used as name in object
    // e.g. 'anvil_rain'
    const modifier = element[0];

    // Object containing info and config
    const object = element[1];

    // Info containing name, description, id, and category
    const info = object.info;

    // Parent directory, directory of modifier
    // e.g. `../anvil_rain`
    const modifierDir = `../${modifier}`;

    // Create folder for modifier if folder doesn't exist
    if (fs.existsSync(modifierDir) === false) {
      fs.mkdirSync(modifierDir)
    }

    // Get modifier color
    let color = info.color;
    // If it's an invalid valid hex code, set it to default color
    if (color == undefined || /^#([a-f0-9]){6}$/i.test(color) === false) color = '#20CBA8';

    // Entry array of configs for modifier
    if (typeof object?.config !== "null" | "undefined") {
        const configs = Object.entries(object?.config);
        const hasConfig = true;

    // Create config page
let configFile = outdent`
    #> abchc:menu/modifiers/core/${modifier}/config
    # Config menu for ${element[0]} made with
    # ../src/index.js
    #
    # @within abchc:menu/**
    # @context player

    #> Disable sendCommandFeedback
    gamerule sendCommandFeedback false

    #> Set sendCommandFeedback back next tick
    schedule function abchc:menu/actions/enable_feedback 1t append
        
    #> Header
    tellraw @s ["\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n",{"text":"---------------------------------------------","color":"#0F21C6"},"\\n",{"text":"←|","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${info.category}"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back.","color":"#ECEFF5"}]}}," ",{"text":"${info.name}","color":"${color}","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${info.category}"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back.","color":"#ECEFF5"}]}},{"text":" Config","color":"#17B7CD","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${info.category}"}},"\\n",{"text":"---------------------------------------------","color":"#0F21C6"}]

    #> Blacklist
    tellraw @p [{"text":"[","color":"#0F21C6","clickEvent":{"action":"suggest_command","value":"/tag player add abch.${modifier}.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\\n\\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}},{"text":"✎","color":"#0F21C6","clickEvent":{"action":"suggest_command","value":"/tag player add abch.${modifier}.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\\n\\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}},{"text":"] ","color":"#0F21C6","clickEvent":{"action":"suggest_command","value":"/tag player add abch.${modifier}.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\\n\\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}},{"text":"Blacklist player","color":"#ECEFF5","clickEvent":{"action":"suggest_command","value":"/tag player add abch.${modifier}.blacklist"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to blacklist a player.\\n\\nReplace 'player' with the player you want to blacklist.","color":"#ECEFF5"}]}}]
    `;

    // If difficulty is enabled,
    if (info.difficulty === true) {
        // Define difficulty directory const for prettier code
        const difficultyDir = `${modifierDir}/difficulty`;

        // check if the "difficulty" directory exists.
        if (fs.existsSync(difficultyDir) === false) {
            // If it doesn't create it.
            fs.mkdirSync(difficultyDir)
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
            execute unless score difficulty.${modifier} abch.config matches 0..3 if score difficulty.global abch.config matches 0 run tellraw @s [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/difficulty/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/difficulty/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/difficulty/reset"}},{"text":" Difficulty: ","color":"#20CBA8"},{"text":"[←]  ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to decrease the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/difficulty/previous_difficulty"}},{"text":"Peaceful ☮","color":"#44F044","hoverEvent":{"action":"show_text","contents":[{"text":"Peaceful","color":"#44F044"},{"text":" is just as its name implies: peaceful! Is it perfectly easy and relaxing? Yes! Is it fun? Well...","color":"#ECEFF5"}]}},{"text":"  [→]","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to increase the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/difficulty/next_difficulty"}},"\\n"]
            # Easy
            execute unless score difficulty.${modifier} abch.config matches 0..3 if score difficulty.global abch.config matches 1 run tellraw @s [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/difficulty/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/difficulty/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/difficulty/reset"}},{"text":" Difficulty: ","color":"#20CBA8"},{"text":"[←]     ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to decrease the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/difficulty/previous_difficulty"}},{"text":"Easy ☺","color":"#3ED011","hoverEvent":{"action":"show_text","contents":[{"text":"Easy","color":"#3ED011"},{"text":" is the difficulty for people looking for a relaxed, casual experience. Don't listen to your friends! Oh, you don't have friends? Uh... Anyway, You're not a chicken! You're just...","color":"#ECEFF5"}]}},{"text":"     [→]","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to increase the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/difficulty/next_difficulty"}},"\\n"]
            # Normal
            execute unless score difficulty.${modifier} abch.config matches 0..3 if score difficulty.global abch.config matches 2 run tellraw @s [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/difficulty/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/difficulty/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/difficulty/reset"}},{"text":" Difficulty: ","color":"#20CBA8"},{"text":"[←]   ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to decrease the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/difficulty/previous_difficulty"}},{"text":"Normal ☯","color":"#E4EB18","hoverEvent":{"action":"show_text","contents":[{"text":"Normal","color":"#E4EB18"},{"text":" is the default difficulty with modifiers just the way they were intended — not too easy but not too hard.","color":"#ECEFF5"}]}},{"text":"    [→]","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to increase the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/difficulty/next_difficulty"}},"\\n"]
            # Hard
            execute unless score difficulty.${modifier} abch.config matches 0..3 if score difficulty.global abch.config matches 3 run tellraw @s [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/difficulty/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/difficulty/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/difficulty/reset"}},{"text":" Difficulty: ","color":"#20CBA8"},{"text":"[←]     ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to decrease the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/difficulty/previous_difficulty"}},{"text":"Hard ☠","color":"#FF0000","hoverEvent":{"action":"show_text","contents":[{"text":"Hard","color":"#FF0000"},{"text":" is the most brutal difficulty for people who like absolute destruction and chaos. Destruction? Certainly. Death? More than you can count. Lag? Oh yeah! Fun? ¯\\\\_(ツ)_/¯","color":"#ECEFF5"}]}},{"text":"     [→]","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to increase the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/difficulty/next_difficulty"}},"\\n"]

            #> Modifier-specific difficulty (local difficulty)
            execute if score difficulty.${modifier} abch.config matches 0 run tellraw @s [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/difficulty/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/difficulty/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/difficulty/reset"}},{"text":" Difficulty: ","color":"#20CBA8"},{"text":"[←]  ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to decrease the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/difficulty/previous_difficulty"}},{"text":"Peaceful ☮","color":"#44F044","hoverEvent":{"action":"show_text","contents":[{"text":"Peaceful","color":"#44F044"},{"text":" is just as its name implies: peaceful! Is it perfectly easy and relaxing? Yes! Is it fun? Well...","color":"#ECEFF5"}]}},{"text":"  [→]","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to increase the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/difficulty/next_difficulty"}},"\\n"]
            execute if score difficulty.${modifier} abch.config matches 1 run tellraw @s [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/difficulty/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/difficulty/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/difficulty/reset"}},{"text":" Difficulty: ","color":"#20CBA8"},{"text":"[←]     ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to decrease the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/difficulty/previous_difficulty"}},{"text":"Easy ☺","color":"#3ED011","hoverEvent":{"action":"show_text","contents":[{"text":"Easy","color":"#3ED011"},{"text":" is the difficulty for people looking for a relaxed, casual experience. Don't listen to your friends! Oh, you don't have friends? Uh... Anyway, You're not a chicken! You're just...","color":"#ECEFF5"}]}},{"text":"     [→]","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to increase the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/difficulty/next_difficulty"}},"\\n"]
            execute if score difficulty.${modifier} abch.config matches 2 run tellraw @s [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/difficulty/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/difficulty/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/difficulty/reset"}},{"text":" Difficulty: ","color":"#20CBA8"},{"text":"[←]   ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to decrease the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/difficulty/previous_difficulty"}},{"text":"Normal ☯","color":"#E4EB18","hoverEvent":{"action":"show_text","contents":[{"text":"Normal","color":"#E4EB18"},{"text":" is the default difficulty with modifiers just the way they were intended — not too easy but not too hard.","color":"#ECEFF5"}]}},{"text":"    [→]","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to increase the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/difficulty/next_difficulty"}},"\\n"]
            execute if score difficulty.${modifier} abch.config matches 3 run tellraw @s [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/difficulty/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/difficulty/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/difficulty/reset"}},{"text":" Difficulty: ","color":"#20CBA8"},{"text":"[←]     ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to decrease the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/difficulty/previous_difficulty"}},{"text":"Hard ☠","color":"#FF0000","hoverEvent":{"action":"show_text","contents":[{"text":"Hard","color":"#FF0000"},{"text":" is the most brutal difficulty for people who like absolute destruction and chaos. Destruction? Certainly. Death? More than you can count. Lag? Oh yeah! Fun? ¯\\\\_(ツ)_/¯","color":"#ECEFF5"}]}},{"text":"     [→]","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to increase the difficulty.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/difficulty/next_difficulty"}},"\\n"]\n`;

                /* Previous difficulty function

                e.g. abchc:menu/modifiers/core/anvil_rain/difficulty/previous_difficulty.mcfunction */
                fs.writeFileSync(`../${modifier}/difficulty/previous_difficulty.mcfunction`,
                    outdent`
                        #> abchc:menu/${modifier}/difficulty/previous_difficulty
                        # Go to the previous difficulty for ${modifier}
                        # Generated with the script at '../src/index.js'
                        #
                        # @within abchc:menu/modifiers/core/${modifier}/**
                        # @context player

                        #> Click sound
                        function abchc:menu/actions/click

                        #> If difficulty isn't set, get from global
                        execute unless score difficulty.${modifier} abch.config matches 0..3 run scoreboard players operation difficulty.${modifier} abch.config = difficulty.global abch.config

                        #> Set difficulty to temp score
                        scoreboard players operation #temp abch.config = difficulty.${modifier} abch.config

                        #> Decrease temp score
                        scoreboard players remove #temp abch.config 1

                        #> If it goes below 0, set to 3 (Peaceful to Hard)
                        execute if score #temp abch.config matches ..-1 run scoreboard players set #temp abch.config 3

                        #> Set new difficulty temp score to difficulty
                        scoreboard players operation difficulty.${modifier} abch.config = #temp abch.config

                        #> Update menu
                        function abchc:menu/modifiers/core/${modifier}/config
                `);

                /* Next difficulty function

                e.g. abchc:menu/modifiers/core/anvil_rain/difficulty/next_difficulty.mcfunction */
                fs.writeFileSync(
                    `../${modifier}/difficulty/next_difficulty.mcfunction`,
                    outdent`
                    #> abchc:menu/${modifier}/difficulty/next_difficulty
                    # Go to the next difficulty for ${modifier}
                    # Generated with the script at '../src/index.js'
                    #
                    # @within abchc:menu/modifiers/core/${modifier}/**
                    # @context player

                    #> Click sound
                    function abchc:menu/actions/click

                    #> If difficulty isn't set, get from global
                    execute unless score difficulty.${modifier} abch.config matches 0..3 run scoreboard players operation difficulty.${modifier} abch.config = difficulty.global abch.config

                    #> Set difficulty to temp score
                    scoreboard players operation #temp abch.config = difficulty.${modifier} abch.config

                    #> Add temp score
                    scoreboard players add #temp abch.config 1

                    #> If it goes above 3, set to 0 (Hard to Peaceful)
                    execute if score #temp abch.config matches 4.. run scoreboard players set #temp abch.config 0

                    #> Set new difficulty temp score to difficulty
                    scoreboard players operation difficulty.${modifier} abch.config = #temp abch.config

                    #> Update menu
                    function abchc:menu/modifiers/core/${modifier}/config
                    `);

            /* Write reset function
            for resetting score

            e.g. abchc:menu/modifiers/core/anvil_rain/rate/reset.mcfunction */
            fs.writeFileSync(
                `../${modifier}/difficulty/reset.mcfunction`,
                outdent`
                #> abchc:menu/modifiers/core/${modifier}/difficulty/reset
                # Reset ${modifier} difficulty to global difficulty
                # Generated with the script at '../src/index.js'
                #
                # @within abchc:menu/modifiers/core/${modifier}/**
                # @context player

                #> Click sound
                function abchc:menu/actions/click

                #> Reset to global difficulty
                scoreboard players operation difficulty.${modifier} abch.config = difficulty.global abch.config

                #> Update menu
                function abchc:menu/modifiers/core/${modifier}/config
                `
            );

    } 

    // For each config
    configs.forEach(element => {
        // ID of config value
        // e.g. 'rate'
        const id = element[0];

        /* Config object containing a proper name of config value,
        description of config value, an id for namespaces, the type
        of the config value (between number, range, string, and toggle),
        and various type-specific values such as min and max for range/string
        and an array of different strings for string type. */
        const cf = element[1];

        // Function scoreboard enum namespace
        // e.g. anvil_rain.rate
        const namespace = `${modifier}.${id}`

        // Relative path for config directory
        // e.g. '../anvil_rain/rate/`
        const configDir = `${modifierDir}/${id}`;

        // Get modifier color
        let color = cf.color;
        // If it's an invalid valid hex code, set it to default color
        if (color == undefined || /^#([a-f0-9]){6}$/i.test(color) === false) color = '#ECEFF5';

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
                    execute unless score ${namespace} abch.config matches -2147483648..2147483647 run tellraw @p ["",{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/${id}/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/${id}/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/${id}/reset"}},{"text":" ${cf.name}: ","color":"${color}","hoverEvent":{"action":"show_text","contents":[{"text":"${cf.description}","color":"#ECEFF5"}]}},{"text":"[«] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/${id}/5down"}},{"text":" [‹] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/${id}/1down"}},{"score":{"name":"${namespace}","objective":"abch.default"},"color":"#ECEFF5"},{"text":" [›] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/${id}/1up"}},{"text":" [»]","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/${id}/5up"}}]
                                
                    execute if score ${namespace} abch.config matches -2147483648..2147483647 run tellraw @p ["",{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/${id}/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/${id}/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/${id}/reset"}},{"text":" ${cf.name}: ","color":"${color}","hoverEvent":{"action":"show_text","contents":[{"text":"${cf.description}","color":"#ECEFF5"}]}},{"text":"[«] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/${id}/5down"}},{"text":" [‹] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/${id}/1down"}},{"score":{"name":"${namespace}","objective":"abch.config"},"color":"#ECEFF5"},{"text":" [›] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/${id}/1up"}},{"text":" [»]","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/${id}/5up"}}]`;

                                    // Create folder for config if it doesn't exist
                                    if (fs.existsSync(configDir) === false) fs.mkdirSync(configDir);

                                    /* Write 1up function
                                    for increasing score by 1
                                
                                    e.g. abchc:menu/modifiers/core/anvil_rain/rate/1up.mcfunction */
                                    fs.writeFileSync(
                                `../${modifier}/${id}/1up.mcfunction`,
                    `#> abchc:menu/modifiers/core/${modifier}/${id}/1up
                    # Increase ${modifier} config score ${id} by 1
                    # Generated with the script at '../src/index.js'
                    #
                    # @within abchc:menu/modifiers/core/${modifier}/**
                    # @context player

                    #> Add 1 to score
                    scoreboard players add ${namespace} abch.config 1

                    #> Click sound
                    function abchc:menu/actions/click

                    #> Update menu
                    function abchc:menu/modifiers/core/${modifier}/config
                `);

            /* Write 5up function
            for increasing score by 5
            
            e.g. abchc:menu/modifiers/core/anvil_rain/rate/5up.mcfunction */
            fs.writeFileSync(
                `${configDir}/5up.mcfunction`,
                outdent`
                    #> abchc:menu/modifiers/core/${modifier}/${id}/5up
                    # Increase ${modifier} config score ${id} by 5
                    # Generated with the script at '../src/index.js'
                    #
                    # @within abchc:menu/modifiers/core/${modifier}/**
                    # @context player

                    #> Add 5 to score
                    scoreboard players add ${namespace} abch.config 5

                    #> Click sound
                    function abchc:menu/actions/click

                    #> Update menu
                    function abchc:menu/modifiers/core/${modifier}/config
                `
            );

            /* Write 5down function
            for decreasing score by 5
            
            e.g. abchc:menu/modifiers/core/anvil_rain/rate/5down.mcfunction */
            fs.writeFileSync(
            `${configDir}/5down.mcfunction`,
            outdent`
                #> abchc:menu/modifiers/core/${modifier}/${id}/5down
                # Decrease ${modifier} config score ${id} by 5
                # Generated with the script at '../src/index.js'
                #
                # @within abchc:menu/modifiers/core/${modifier}/**
                # @context player

                #> Remove 5 from score
                scoreboard players remove ${namespace} abch.config 5

                #> Click sound
                function abchc:menu/actions/click

                #> Update menu
                function abchc:menu/modifiers/core/${modifier}/config
                `
            );

            /* Write 1down function
            for decreasing score by 1
            
            e.g. abchc:menu/modifiers/core/anvil_rain/rate/1down.mcfunction */
            fs.writeFileSync(
            `${configDir}/1down.mcfunction`,
            outdent`
                #> abchc:menu/modifiers/core/${modifier}/${id}/1down
                # Decrease ${modifier} config score ${id} by 1
                # Generated with the script at '../src/index.js'
                #
                # @within abchc:menu/modifiers/core/${modifier}/**
                # @context player

                #> Remove 1 from score
                scoreboard players remove ${namespace} abch.config 1

                #> Click sound
                function abchc:menu/actions/click

                #> Update menu
                function abchc:menu/modifiers/core/${modifier}/config
                `
            );

            /* Write reset function
            for resetting score

            e.g. abchc:menu/modifiers/core/anvil_rain/rate/reset.mcfunction */
            fs.writeFileSync(
                `${configDir}/reset.mcfunction`,
                outdent`
                #> abchc:menu/modifiers/core/${modifier}/${id}/reset
                # Reset ${modifier} config score ${id} to default
                # Generated with the script at '../src/index.js'
                #
                # @within abchc:menu/modifiers/core/${modifier}/**
                # @context player

                #> Reset
                # If default was set, set score to default
                execute if score ${namespace} abch.default matches -2147483648..2147483647 run scoreboard players operation ${namespace} abch.config = ${namespace} abch.default
                # If default wasn't set, set score to 1
                execute unless score ${namespace} abch.default matches -2147483648..2147483647 run scoreboard players set ${namespace} abch.config 1

                #> Click sound
                function abchc:menu/actions/click

                #> Update menu
                function abchc:menu/modifiers/core/${modifier}/config
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
                    execute unless score ${namespace} abch.config matches -2147483648..2147483647 run tellraw @p ["",{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/${id}/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/${id}/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/${id}/reset"}},{"text":" ${cf.name}: ","color":"${color}","hoverEvent":{"action":"show_text","contents":[{"text":"${cf.description}","color":"#ECEFF5"}]}},{"text":"[«] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/${id}/5down"}},{"text":" [‹] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/${id}/1down"}},{"score":{"name":"${namespace}","objective":"abch.default"},"color":"#ECEFF5"},{"text":" [›] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/${id}/1up"}},{"text":" [»]","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/${id}/5up"}}]
                                
                    execute if score ${namespace} abch.config matches -2147483648..2147483647 run tellraw @p ["",{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/${id}/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/${id}/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/${id}/reset"}},{"text":" ${cf.name}: ","color":"${color}","hoverEvent":{"action":"show_text","contents":[{"text":"${cf.description}","color":"#ECEFF5"}]}},{"text":"[«] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/${id}/5down"}},{"text":" [‹] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/${id}/1down"}},{"score":{"name":"${namespace}","objective":"abch.config"},"color":"#ECEFF5"},{"text":" [›] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/${id}/1up"}},{"text":" [»]","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/${id}/5up"}}]`;

                                    // Create folder for config if it doesn't exist
                                    if (fs.existsSync(configDir) === false) fs.mkdirSync(configDir);

                                    /* Write 1up function
                                    for increasing score by 1
                                
                                    e.g. abchc:menu/modifiers/core/anvil_rain/rate/1up.mcfunction */
                                    fs.writeFileSync(
                                `../${modifier}/${id}/1up.mcfunction`,
                    `#> abchc:menu/modifiers/core/${modifier}/${id}/1up
                    # Increase ${modifier} config score ${id} by 1
                    # Generated with the script at '../src/index.js'
                    #
                    # @within abchc:menu/modifiers/core/${modifier}/**
                    # @context player

                    #> Add 1 to score
                    scoreboard players add ${namespace} abch.config 1

                    #> If number outside range, reset score
                    # If below minimum, set to max
                    execute if score ${namespace} abch.config < #${namespace}_min abch.default run scoreboard players operation ${namespace} abch.config = #${namespace}_max abch.default
                    # If above maximum, set to min
                    execute if score ${namespace} abch.config > #${namespace}_max abch.default run scoreboard players operation ${namespace} abch.config = #${namespace}_min abch.default

                    #> Click sound
                    function abchc:menu/actions/click

                    #> Update menu
                    function abchc:menu/modifiers/core/${modifier}/config
                `);

                /* Write 5up function
                for increasing score by 5
            
                e.g. abchc:menu/modifiers/core/anvil_rain/rate/5up.mcfunction */
                fs.writeFileSync(
                    `../${modifier}/${id}/5up.mcfunction`,
                    outdent`
                        #> abchc:menu/modifiers/core/${modifier}/${id}/5up
                        # Increase ${modifier} config score ${id} by 5
                        # Generated with the script at '../src/index.js'
                        #
                        # @within abchc:menu/modifiers/core/${modifier}/**
                        # @context player

                        #> Add 5 to score
                        scoreboard players add ${namespace} abch.config 5

                        #> If number outside range, reset score
                        # If below minimum, set to max
                        execute if score ${namespace} abch.config < #${namespace}_min abch.default run scoreboard players operation ${namespace} abch.config = #${namespace}_max abch.default
                        # If above maximum, set to min
                        execute if score ${namespace} abch.config > #${namespace}_max abch.default run scoreboard players operation ${namespace} abch.config = #${namespace}_min abch.default

                        #> Click sound
                        function abchc:menu/actions/click

                        #> Update menu
                        function abchc:menu/modifiers/core/${modifier}/config
                    `);

                /* Write 1down function
                for decreasing score by 1
            
                e.g. abchc:menu/modifiers/core/anvil_rain/rate/1down.mcfunction */
                fs.writeFileSync(
                    `../${modifier}/${id}/1down.mcfunction`,
                    outdent`
                    #> abchc:menu/modifiers/core/${modifier}/${id}/1down
                    # Increase ${modifier} config score ${id} by 1
                    # Generated with the script at '../src/index.js'
                    #
                    # @within abchc:menu/modifiers/core/${modifier}/**
                    # @context player

                    #> Remove 1 from score
                    scoreboard players remove ${namespace} abch.config 1

                    #> If number outside range, reset score
                    # If below minimum, set to max
                    execute if score ${namespace} abch.config < #${namespace}_min abch.default run scoreboard players operation ${namespace} abch.config = #${namespace}_max abch.default
                    # If above maximum, set to min
                    execute if score ${namespace} abch.config > #${namespace}_max abch.default run scoreboard players operation ${namespace} abch.config = #${namespace}_min abch.default

                    #> Click sound
                    function abchc:menu/actions/click

                    #> Update menu
                    function abchc:menu/modifiers/core/${modifier}/config
                    `
                );
        
                /* Write 5down function
                for decreasing score by 5
            
                e.g. abchc:menu/modifiers/core/anvil_rain/rate/5down.mcfunction */
                fs.writeFileSync(
                    `../${modifier}/${id}/5down.mcfunction`,
                    outdent`
                        #> abchc:menu/modifiers/core/${modifier}/${id}/5down
                        # Increase ${modifier} config score ${id} by 5
                        # Generated with the script at '../src/index.js'
                        #
                        # @within abchc:menu/modifiers/core/${modifier}/**
                        # @context player

                        #> Remove 5 from score
                        scoreboard players remove ${namespace} abch.config 5

                        #> If number outside range, reset score
                        # If below minimum, set to max
                        execute if score ${namespace} abch.config < #${namespace}_min abch.default run scoreboard players operation ${namespace} abch.config = #${namespace}_max abch.default
                        # If above maximum, set to min
                        execute if score ${namespace} abch.config > #${namespace}_max abch.default run scoreboard players operation ${namespace} abch.config = #${namespace}_min abch.default

                        #> Click sound
                        function abchc:menu/actions/click

                        #> Update menu
                        function abchc:menu/modifiers/core/${modifier}/config
                    `
                );

            /* Write reset function
            for resetting score

            e.g. abchc:menu/modifiers/core/anvil_rain/rate/reset.mcfunction */
            fs.writeFileSync(
                `${configDir}/reset.mcfunction`,
                outdent`
                    #> abchc:menu/modifiers/core/${modifier}/${id}/reset
                    # Reset ${modifier} config score ${id} to default
                    # Generated with the script at '../src/index.js'
                    #
                    # @within abchc:menu/modifiers/core/${modifier}/**
                    # @context player

                    #> Reset
                    # If default was set, set score to default
                    execute if score ${namespace} abch.default matches -2147483648..2147483647 run scoreboard players operation ${namespace} abch.config = ${namespace} abch.default
                    # If default wasn't set, set score to 1
                    execute unless score ${namespace} abch.default matches -2147483648..2147483647 run scoreboard players set ${namespace} abch.config 1

                    #> Click sound
                    function abchc:menu/actions/click

                    #> Update menu
                    function abchc:menu/modifiers/core/${modifier}/config
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
                    execute unless data storage abchc:menu/modifiers/core/${modifier} ${id} run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/${id}/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/${id}/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/${id}/reset"}},{"text":" ${cf.name}: ","color":"${color}","hoverEvent":{"action":"show_text","contents":[{"text":"${cf.description}","color":"#ECEFF5"}]}},{"text":" [←] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/${id}/down"}},{"text":"${cf.strings[0]}","color":"#ECEFF5"},{"text":" [→] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/${id}/up"}}]
                    # If value is set, display value
                    execute if data storage abchc:menu/modifiers/core/${modifier} ${id} run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/${id}/reset"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/${id}/reset"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/${id}/reset"}},{"text":" ${cf.name}: ","color":"${color}","hoverEvent":{"action":"show_text","contents":[{"text":"${cf.description}","color":"#ECEFF5"}]}},{"text":" [←] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/${id}/down"}},{"nbt":"${id}","storage":"abchc:menu/modifiers/core/${modifier}","color":"#ECEFF5"},{"text":" [→] ","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/${id}/up"}}]
                `;

                // Create folder for config if it doesn't exist
                if (fs.existsSync(configDir) === false) fs.mkdirSync(configDir);

                /* Write up function
                for increasing score by 1
            
                e.g. abchc:menu/modifiers/core/anvil_rain/rate/up.mcfunction */
                fs.writeFileSync(
                    `../${modifier}/${id}/up.mcfunction`,
                    outdent`
                        #> abchc:menu/modifiers/core/${modifier}/${id}/up
                        # Increase ${modifier} config score ${id} by 1
                        # Generated with the script at '../src/index.js'
                        #
                        # @within abchc:menu/modifiers/core/${modifier}/**
                        # @context player

                        #> Add 1 to score
                        scoreboard players add ${namespace} abch.config 1

                        #> If number outside range, reset score
                        # If below minimum, set to max
                        execute if score ${namespace} abch.config matches ..0 run scoreboard players set ${namespace} abch.config ${cf.strings.length + 1}
                        execute if score ${namespace} abch.config matches ${cf.strings.length + 1}.. run scoreboard players set ${namespace} abch.config 1

                        #> Set string based on score
                        function abchc:menu/modifiers/core/${modifier}/${id}/update_string

                        #> Click sound
                        function abchc:menu/actions/click

                        #> Update menu
                        function abchc:menu/modifiers/core/${modifier}/config
                    `
                );

                /* Write down function
                for decreasing score by 1
            
                e.g. abchc:menu/modifiers/core/anvil_rain/rate/down.mcfunction */
                fs.writeFileSync(
                    `../${modifier}/${id}/down.mcfunction`,
                    outdent`
                        #> abchc:menu/modifiers/core/${modifier}/${id}/down
                        # Increase ${modifier} config score ${id} by 1
                        # Generated with the script at '../src/index.js'
                        #
                        # @within abchc:menu/modifiers/core/${modifier}/**
                        # @context player

                        #> Remove 1 from score
                        scoreboard players remove ${namespace} abch.config 1

                        #> If number outside range, reset score
                        # If below minimum, set to max
                        execute if score ${namespace} abch.config matches ..0 run scoreboard players set ${namespace} abch.config ${cf.strings.length + 1}
                        execute if score ${namespace} abch.config matches ${cf.strings.length + 1}.. run scoreboard players set ${namespace} abch.config 1

                        #> Set string based on score
                        function abchc:menu/modifiers/core/${modifier}/${id}/update_string

                        #> Click sound
                        function abchc:menu/actions/click

                        #> Update menu
                        function abchc:menu/modifiers/core/${modifier}/config
                    `
                );

            /* Write update_string function
            for updating string based on score

            e.g. abchc:menu/modifiers/core/anvil_rain/rate/update_string.mcfunction */

            // Add header
            let update_string = outdent`
                #> abchc:menu/modifiers/core/${modifier}/${id}/update_string
                # Update displayed string based on score ${namespace}
                # the script in ../src
                #
                # @within abchc:menu/modifiers/core/${modifier}/**
                # @context player

                #> Update
            `;

            // Add command for each array element
            for (let i = 0; i < cf.strings.length; i++) {
                const element = cf.strings[i];
                update_string +=
                    `\nexecute if score ${namespace} abch.config matches ${i + 1} run ` +
                    `data modify storage abchc:menu/modifiers/core/${modifier} ${id} set value ${cf.strings[i]}`
            }

            // Add footer
            update_string += outdent`
                \n\n#> Click sound
                function abchc:menu/actions/click
                            
                #> Update menu
                function abchc:menu/modifiers/core/${modifier}/config`
                            
                            // Write to file
                            fs.writeFileSync(`${configDir}/update_string.mcfunction`, update_string);

                            /* Write reset function
                            for resetting score

                            e.g. abchc:menu/modifiers/core/anvil_rain/rate/reset.mcfunction */
                            fs.writeFileSync(
                                `${configDir}/reset.mcfunction`,
                                outdent`
                                    #> abchc:menu/modifiers/core/${modifier}/${id}/reset
                                    # Reset ${modifier} config score ${id} to default
                                    # Generated with the script at '../src/index.js'
                                    #
                                    # @within abchc:menu/modifiers/core/${modifier}/**
                                    # @context player

                                    #> Reset
                                    # If default was set, set score to default
                                    execute if score ${namespace} abch.default matches -2147483648..2147483647 run scoreboard players operation ${namespace} abch.config = ${namespace} abch.default
                                    # If default wasn't set, set score to 1
                                    execute unless score ${namespace} abch.default matches -2147483648..2147483647 run scoreboard players set ${namespace} abch.config 1

                                    #> Click sound
                                    function abchc:menu/actions/click

                                    #> Update string
                                    function abchc:menu/modifiers/core/${modifier}/${id}/update_string

                                    #> Update menu
                                    function abchc:menu/modifiers/core/${modifier}/config
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
                    execute if score ${namespace} abch.config matches ..0 run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/${id}/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/${id}/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/${id}/toggle"}},{"text":" [✖] ","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/${id}/toggle"}},{"text":"${cf.name}","color":"${color}","hoverEvent":{"action":"show_text","contents":[{"text":"${cf.description}","color":"#ECEFF5"}]}}]
                    execute if score ${namespace} abch.config matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/${id}/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/${id}/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/${id}/toggle"}},{"text":" [✔] ","color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/${id}/toggle"}},{"text":"${cf.name}","color":"${color}","hoverEvent":{"action":"show_text","contents":[{"text":"${cf.description}","color":"#ECEFF5"}]}}]

                    # If no config is set, show togglebased on default
                    execute unless score ${namespace} abch.config matches -2147483648..2147483647 unless score ${namespace} abch.default matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/${id}/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/${id}/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/${id}/toggle"}},{"text":" [✖] ","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/${id}/toggle"}},{"text":"${cf.name}","color":"${color}","hoverEvent":{"action":"show_text","contents":[{"text":"${cf.description}","color":"#ECEFF5"}]}}]
                    execute unless score ${namespace} abch.config matches -2147483648..2147483647 if score ${namespace} abch.default matches 1.. run tellraw @p [{"text":"[","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/${id}/toggle"}},{"text":"⟲","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/${id}/toggle"}},{"text":"]","color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/${id}/toggle"}},{"text":" [✔] ","color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/${modifier}/${id}/toggle"}},{"text":"${cf.name}","color":"${color}","hoverEvent":{"action":"show_text","contents":[{"text":"${cf.description}","color":"#ECEFF5"}]}}]
                `;

                // Create folder for config if it doesn't exist
                if (fs.existsSync(configDir) === false) fs.mkdirSync(configDir);

                /* Write toggle function

                e.g. abchc:menu/modifiers/core/anvil_rain/rate/1up.mcfunction */
                fs.writeFileSync(
                    `../${modifier}/${id}/toggle.mcfunction`,
                    outdent`
                        #> abchc:menu/modifiers/core/${modifier}/${id}/toggle
                        # Toggle ${modifier} config score ${id} between 0 and 1
                        # Generated with the script at '../src/index.js'
                        #
                        # @within abchc:menu/modifiers/core/${modifier}/**
                        # @context player

                        # Add score
                        scoreboard players add ${namespace} abch.config 1

                        # If score goes above 1, set it to 0
                        execute if score ${namespace} abch.config matches 2.. run scoreboard players set ${namespace} abch.config 0

                        # Click sound
                        function abchc:menu/actions/click

                        # Update menu
                        function abchc:menu/modifiers/core/${modifier}/config
                        `
                    );

            /* Write reset function
            for resetting score

            e.g. abchc:menu/modifiers/core/anvil_rain/rate/reset.mcfunction */
            fs.writeFileSync(
                `${configDir}/reset.mcfunction`,
                outdent`
                    #> abchc:menu/modifiers/core/${modifier}/${id}/reset
                    # Reset ${modifier} config score ${id} to default
                    # Generated with the script at '../src/index.js'
                    #
                    # @within abchc:menu/modifiers/core/${modifier}/**
                    # @context player

                    #> Reset
                    # If default was set, set score to default
                    execute if score ${namespace} abch.default matches -2147483648..2147483647 run scoreboard players operation ${namespace} abch.config = ${namespace} abch.default
                    # If default wasn't set, set score to 0
                    execute unless score ${namespace} abch.default matches -2147483648..2147483647 run scoreboard players set ${namespace} abch.config 0

                    #> Click sound
                    function abchc:menu/actions/click

                    #> Update menu
                    function abchc:menu/modifiers/core/${modifier}/config
                `
            );
                break;
        
            default:
                // If invalid config type was given, log error
                console.error(`Invalid type '${cf.type}' in ${info.id}.${id}!`)
                break;
        }
    });

    // Write config page since all configs are added
    fs.writeFileSync(`${modifierDir}/config.mcfunction`, configFile);
    } else {
        const hasConfig = false;
    };
});

const modifiersList = Object.keys(modifiers);

modifiersList.forEach(element => {
    try {
        // Create folder
        if (fs.existsSync(`../${element}`) === false) fs.mkdirSync(`../${element}`);

        // Create "on" function
        fs.writeFileSync(`../${element}/on.mcfunction`,`#> abchc:menu/modifiers/core/${element}/on\n#Automatically generated toggle on function for ${element}\n# @within abchc:menu/**\n# @context player\n\n# Toggle\nscoreboard players set ${element} abch.toggle 1\n\n# Run load function\nfunction abchc:modifiers/${element}/load\n\n# Click sound\nfunction abchc:menu/actions/click\n\n# Update menu\nfunction abchc:menu/find_page`)

        // Create "off" function
        fs.writeFileSync(`../${element}/off.mcfunction`, `#> abchc:menu/modifiers/core/${element}/off\n#Automatically generated toggle off function for ${element}\n# @within abchc:menu/**\n# @context player\n\n# Toggle\nscoreboard players set ${element} abch.toggle 0\n\n# Run unload function\nfunction abchc:modifiers/${element}/unload\n\n# Click sound\nfunction abchc:menu/actions/click\n\n# Update menu\nfunction abchc:menu/find_page`)

        //file written successfully

      } catch (err) {
        console.error(err)
      }
});

console.log("Wrote files!")