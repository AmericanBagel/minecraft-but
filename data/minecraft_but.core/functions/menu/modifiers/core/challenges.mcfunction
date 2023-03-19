#> minecraft_but.coreraft_but.core:menu/modifiers/core/challenges
# List of Challenges (challenges) modifiers. This file is automatically generated.
# @within minecraft_but.coreraft_but.core:menu/**
# @context menu player

#> Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

#> Update page score
scoreboard players set @s minecraft_but.menu.page 12

#> Disable sendCommandFeedback
gamerule sendCommandFeedback false

#> Set sendCommandFeedback back next tick
schedule function minecraft_but.coreraft_but.core:menu/actions/enable_feedback 1t append

#> Header

# If there are no expansion loaded, clicking top bar sends player back to main menu.
# Doing this gets rid of that unnecessary step between directory and page 1 here.
execute unless score $total minecraft_but.expansion matches 1.. run tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"---------------------------------------------","color":"#0F21C6"},"\n",{"text":"←|","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/minecraft_but.coreion minecraft_but.core:menu/actions/back_to_main"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back to the main menu.","color":"#ECEFF5"}]}},{"text":" Challenges","color":"#E4EB18","clickEvent":{"action":"run_commanminecraft_but.corealue":"/function minecraft_but.core:menu/actions/back_to_main"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back to the main menu.","color":"#ECEFF5"}]}},"\n",{"text":"---------------------------------------------","color":"#0F21C6"}]

# If there is an expansion loaded, clicking top bar sends the player to the modifiers directory
# which has links to the different expansion packs' modifiers pages.
execute if score $total minecraft_but.expansion matches 1.. run execute unless score $total minecraft_but.expansion matches 1.. run tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"---------------------------------------------","color":"#0F21C6"},"\n",{"text":"←|","color":"#ECEFF5","clickEvent":{"action":"run_command","minecraft_but.core":"/function minecraft_but.core:menu/modifiers/directory"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back to the modifiers category page.","color":"#ECEFF5"}]}},{"text":" Modifier Categories","color":"#E4EB18","clickEvent":{"action":"rminecraft_but.coremmand","value":"/function minecraft_but.core:menu/modifiers/directory"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back to the modifiers category page.","color":"#ECEFF5"}]}},"\n",{"text":"---------------------------------------------","color":"#0F21C6"}]

#> Modifiers
## You can't touch grass (or nature) (botanophobia)
execute unless score botanophobia minecraft_but.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/minecraft_but.coreion minecraft_but.core:menu/modifiers/core/botanophobia/on"}},{"text":"     ","hoverEvent": {"action":"show_text","contents":[{"text":"Sorry, Twitter users. This one isn't for you.","color":"#ECEFF5"}]}},{"text":"You can't touch grass (or nature)","bold":false,"color":"#ffff00","hoverEvent": {"action":"show_text","contents":[{"text":"Sorry, Twitter users. This one isn't for you.","color":"#ECEFF5"}]}}]


execute if score botanophobia minecraft_but.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/minecraft_but.coreion minecraft_but.core:menu/modifiers/core/botanophobia/off"}},{"text":"     ","hoverEvent": {"action":"show_text","contents":[{"text":"Sorry, Twitter users. This one isn't for you.","color":"#ECEFF5"}]}},{"text":"You can't touch grass (or nature)","bold":false,"color":"#ffff00","hoverEvent": {"action":"show_text","contents":[{"text":"Sorry, Twitter users. This one isn't for you.","color":"#ECEFF5"}]}}]

## You can only eat meat (carnivore)
execute unless score carnivore minecraft_but.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/minecraft_but.coreion minecraft_but.core:menu/modifiers/core/carnivore/on"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_commanminecraft_but.corealue":"/function minecraft_but.core:menu/modifiers/core/carnivore/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"actionminecraft_but.coren_command","value":"/function minecraft_but.core:menu/modifiers/core/carnivore/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvminecraft_but.core{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/carnivore/config"}},{"text":"You can only eat meat","bold":false,"color":"#fff300","hoverEvent": {"action":"show_text","contents":[{"text":"Greetings, ali--I mean fellow humans! It is with great joy that we announce that meat is good! Eat it! Eat it all! That Alien Animal Disease thing? That was just a conspiracy theory. Now eat it! Eat all the meat! You won't become a glorbazoid. We promise.","color":"#ECEFF5"}]}}]



execute if score carnivore minecraft_but.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/minecraft_but.coreion minecraft_but.core:menu/modifiers/core/carnivore/off"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_commanminecraft_but.corealue":"/function minecraft_but.core:menu/modifiers/core/carnivore/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"actionminecraft_but.coren_command","value":"/function minecraft_but.core:menu/modifiers/core/carnivore/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvminecraft_but.core{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/carnivore/config"}},{"text":"You can only eat meat","bold":false,"color":"#fff300","hoverEvent": {"action":"show_text","contents":[{"text":"Greetings, ali--I mean fellow humans! It is with great joy that we announce that meat is good! Eat it! Eat it all! That Alien Animal Disease thing? That was just a conspiracy theory. Now eat it! Eat all the meat! You won't become a glorbazoid. We promise.","color":"#ECEFF5"}]}}]

## You always crawl (crawling)
execute unless score crawling minecraft_but.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/minecraft_but.coreion minecraft_but.core:menu/modifiers/core/crawling/on"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_commanminecraft_but.corealue":"/function minecraft_but.core:menu/modifiers/core/crawling/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"actionminecraft_but.coren_command","value":"/function minecraft_but.core:menu/modifiers/core/crawling/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvminecraft_but.core{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/crawling/config"}},{"text":"You always crawl","bold":false,"color":"#ffe600","hoverEvent": {"action":"show_text","contents":[{"text":"If you've got four limbs, you'd better use them!","color":"#ECEFF5"}]}}]



execute if score crawling minecraft_but.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/minecraft_but.coreion minecraft_but.core:menu/modifiers/core/crawling/off"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_commanminecraft_but.corealue":"/function minecraft_but.core:menu/modifiers/core/crawling/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"actionminecraft_but.coren_command","value":"/function minecraft_but.core:menu/modifiers/core/crawling/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvminecraft_but.core{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/crawling/config"}},{"text":"You always crawl","bold":false,"color":"#ffe600","hoverEvent": {"action":"show_text","contents":[{"text":"If you've got four limbs, you'd better use them!","color":"#ECEFF5"}]}}]

## You can't eat meat (herbivore)
execute unless score herbivore minecraft_but.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/minecraft_but.coreion minecraft_but.core:menu/modifiers/core/herbivore/on"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_commanminecraft_but.corealue":"/function minecraft_but.core:menu/modifiers/core/herbivore/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"actionminecraft_but.coren_command","value":"/function minecraft_but.core:menu/modifiers/core/herbivore/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvminecraft_but.core{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/herbivore/config"}},{"text":"You can't eat meat","bold":false,"color":"#ffda00","hoverEvent": {"action":"show_text","contents":[{"text":"Due to rapid spread of a new strain of 'Alien Animal Disease', meat has been illegalized in all 14 systems of the Galactic Union.","color":"#ECEFF5"}]}}]



execute if score herbivore minecraft_but.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/minecraft_but.coreion minecraft_but.core:menu/modifiers/core/herbivore/off"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_commanminecraft_but.corealue":"/function minecraft_but.core:menu/modifiers/core/herbivore/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"actionminecraft_but.coren_command","value":"/function minecraft_but.core:menu/modifiers/core/herbivore/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvminecraft_but.core{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/herbivore/config"}},{"text":"You can't eat meat","bold":false,"color":"#ffda00","hoverEvent": {"action":"show_text","contents":[{"text":"Due to rapid spread of a new strain of 'Alien Animal Disease', meat has been illegalized in all 14 systems of the Galactic Union.","color":"#ECEFF5"}]}}]

## You have no inventory (limited_inventory)
execute unless score limited_inventory minecraft_but.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/minecraft_but.coreion minecraft_but.core:menu/modifiers/core/limited_inventory/on"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_commanminecraft_but.corealue":"/function minecraft_but.core:menu/modifiers/core/limited_inventory/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"actionminecraft_but.coren_command","value":"/function minecraft_but.core:menu/modifiers/core/limited_inventory/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvminecraft_but.core{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/limited_inventory/config"}},{"text":"You have no inventory","bold":false,"color":"#ffce00","hoverEvent": {"action":"show_text","contents":[{"text":"Players' inventories become locked, with each slot optionally unlockable for every 2 XP levels.","color":"#ECEFF5"}]}}]



execute if score limited_inventory minecraft_but.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/minecraft_but.coreion minecraft_but.core:menu/modifiers/core/limited_inventory/off"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_commanminecraft_but.corealue":"/function minecraft_but.core:menu/modifiers/core/limited_inventory/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"actionminecraft_but.coren_command","value":"/function minecraft_but.core:menu/modifiers/core/limited_inventory/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvminecraft_but.core{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/limited_inventory/config"}},{"text":"You have no inventory","bold":false,"color":"#ffce00","hoverEvent": {"action":"show_text","contents":[{"text":"Players' inventories become locked, with each slot optionally unlockable for every 2 XP levels.","color":"#ECEFF5"}]}}]

## You can only look in one direction (look_straight)
execute unless score look_straight minecraft_but.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/minecraft_but.coreion minecraft_but.core:menu/modifiers/core/look_straight/on"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_commanminecraft_but.corealue":"/function minecraft_but.core:menu/modifiers/core/look_straight/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"actionminecraft_but.coren_command","value":"/function minecraft_but.core:menu/modifiers/core/look_straight/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvminecraft_but.core{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/look_straight/config"}},{"text":"You can only look in one direction","bold":false,"color":"#ffc100","hoverEvent": {"action":"show_text","contents":[{"text":"Players are forced to look in a customizable direction.","color":"#ECEFF5"}]}}]



execute if score look_straight minecraft_but.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/minecraft_but.coreion minecraft_but.core:menu/modifiers/core/look_straight/off"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_commanminecraft_but.corealue":"/function minecraft_but.core:menu/modifiers/core/look_straight/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"actionminecraft_but.coren_command","value":"/function minecraft_but.core:menu/modifiers/core/look_straight/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvminecraft_but.core{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/look_straight/config"}},{"text":"You can only look in one direction","bold":false,"color":"#ffc100","hoverEvent": {"action":"show_text","contents":[{"text":"Players are forced to look in a customizable direction.","color":"#ECEFF5"}]}}]

## You can't leave water (mermaid)
execute unless score mermaid minecraft_but.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/minecraft_but.coreion minecraft_but.core:menu/modifiers/core/mermaid/on"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_commanminecraft_but.corealue":"/function minecraft_but.core:menu/modifiers/core/mermaid/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"actionminecraft_but.coren_command","value":"/function minecraft_but.core:menu/modifiers/core/mermaid/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvminecraft_but.core{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/mermaid/config"}},{"text":"You can't leave water","bold":false,"color":"#ffb500","hoverEvent": {"action":"show_text","contents":[{"text":"Leaving water kills you except when it's raining. If it's raining, you can survive only if rain is falling on you. If a block above you blocks the rain, you will die.","color":"#ECEFF5"}]}}]



execute if score mermaid minecraft_but.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/minecraft_but.coreion minecraft_but.core:menu/modifiers/core/mermaid/off"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_commanminecraft_but.corealue":"/function minecraft_but.core:menu/modifiers/core/mermaid/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"actionminecraft_but.coren_command","value":"/function minecraft_but.core:menu/modifiers/core/mermaid/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvminecraft_but.core{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/mermaid/config"}},{"text":"You can't leave water","bold":false,"color":"#ffb500","hoverEvent": {"action":"show_text","contents":[{"text":"Leaving water kills you except when it's raining. If it's raining, you can survive only if rain is falling on you. If a block above you blocks the rain, you will die.","color":"#ECEFF5"}]}}]

## There's no gravity (no_gravity)
execute unless score no_gravity minecraft_but.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/minecraft_but.coreion minecraft_but.core:menu/modifiers/core/no_gravity/on"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_commanminecraft_but.corealue":"/function minecraft_but.core:menu/modifiers/core/no_gravity/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"actionminecraft_but.coren_command","value":"/function minecraft_but.core:menu/modifiers/core/no_gravity/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvminecraft_but.core{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/no_gravity/config"}},{"text":"There's no gravity","bold":false,"color":"#ffa800","hoverEvent": {"action":"show_text","contents":[{"text":"There's no gravity! Get creative with trying to move up and down! Pro tip: boats are a great way to get around. Just hop in one and flyyyyyy!  ","color":"#ECEFF5"}]}}]



execute if score no_gravity minecraft_but.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/minecraft_but.coreion minecraft_but.core:menu/modifiers/core/no_gravity/off"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_commanminecraft_but.corealue":"/function minecraft_but.core:menu/modifiers/core/no_gravity/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"actionminecraft_but.coren_command","value":"/function minecraft_but.core:menu/modifiers/core/no_gravity/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvminecraft_but.core{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/no_gravity/config"}},{"text":"There's no gravity","bold":false,"color":"#ffa800","hoverEvent": {"action":"show_text","contents":[{"text":"There's no gravity! Get creative with trying to move up and down! Pro tip: boats are a great way to get around. Just hop in one and flyyyyyy!  ","color":"#ECEFF5"}]}}]

## You can't touch water (toxic_water)
execute unless score toxic_water minecraft_but.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/minecraft_but.coreion minecraft_but.core:menu/modifiers/core/toxic_water/on"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_commanminecraft_but.corealue":"/function minecraft_but.core:menu/modifiers/core/toxic_water/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"actionminecraft_but.coren_command","value":"/function minecraft_but.core:menu/modifiers/core/toxic_water/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvminecraft_but.core{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/toxic_water/config"}},{"text":"You can't touch water","bold":false,"color":"#ff9c00","hoverEvent": {"action":"show_text","contents":[{"text":"Touching water or being exposed to rain kills you.","color":"#ECEFF5"}]}}]



execute if score toxic_water minecraft_but.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/minecraft_but.coreion minecraft_but.core:menu/modifiers/core/toxic_water/off"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_commanminecraft_but.corealue":"/function minecraft_but.core:menu/modifiers/core/toxic_water/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"actionminecraft_but.coren_command","value":"/function minecraft_but.core:menu/modifiers/core/toxic_water/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvminecraft_but.core{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/toxic_water/config"}},{"text":"You can't touch water","bold":false,"color":"#ff9c00","hoverEvent": {"action":"show_text","contents":[{"text":"Touching water or being exposed to rain kills you.","color":"#ECEFF5"}]}}]

## Light kills you (troglodyte)
execute unless score troglodyte minecraft_but.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/minecraft_but.coreion minecraft_but.core:menu/modifiers/core/troglodyte/on"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_commanminecraft_but.corealue":"/function minecraft_but.core:menu/modifiers/core/troglodyte/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"actionminecraft_but.coren_command","value":"/function minecraft_but.core:menu/modifiers/core/troglodyte/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvminecraft_but.core{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/troglodyte/config"}},{"text":"Light kills you","bold":false,"color":"#ff9000","hoverEvent": {"action":"show_text","contents":[{"text":"Players die when they enter light. Higher light levels damage players more, eventually killing them.","color":"#ECEFF5"}]}}]



execute if score troglodyte minecraft_but.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/minecraft_but.coreion minecraft_but.core:menu/modifiers/core/troglodyte/off"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_commanminecraft_but.corealue":"/function minecraft_but.core:menu/modifiers/core/troglodyte/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"actionminecraft_but.coren_command","value":"/function minecraft_but.core:menu/modifiers/core/troglodyte/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvminecraft_but.core{"action":"run_command","value":"/function minecraft_but.core:menu/modifiers/core/troglodyte/config"}},{"text":"Light kills you","bold":false,"color":"#ff9000","hoverEvent": {"action":"show_text","contents":[{"text":"Players die when they enter light. Higher light levels damage players more, eventually killing them.","color":"#ECEFF5"}]}}]

## Taking damage blinds you (blinding_damage)
execute unless score blinding_damage minecraft_but.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/minecraft_but.coreion minecraft_but.core:menu/modifiers/core/blinding_damage/on"}},{"text":"     ","hoverEvent": {"action":"show_text","contents":[{"text":"According to recent research, fatal anemia can, among other symptoms, cause blindness!","color":"#ECEFF5"}]}},{"text":"Taking damage blinds you","bold":false,"color":"#ff8300","hoverEvent": {"action":"show_text","contents":[{"text":"According to recent research, fatal anemia can, among other symptoms, cause blindness!","color":"#ECEFF5"}]}}]


execute if score blinding_damage minecraft_but.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/minecraft_but.coreion minecraft_but.core:menu/modifiers/core/blinding_damage/off"}},{"text":"     ","hoverEvent": {"action":"show_text","contents":[{"text":"According to recent research, fatal anemia can, among other symptoms, cause blindness!","color":"#ECEFF5"}]}},{"text":"Taking damage blinds you","bold":false,"color":"#ff8300","hoverEvent": {"action":"show_text","contents":[{"text":"According to recent research, fatal anemia can, among other symptoms, cause blindness!","color":"#ECEFF5"}]}}]

## All fall damage kills you (deadly_falls)
execute unless score deadly_falls minecraft_but.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/minecraft_but.coreion minecraft_but.core:menu/modifiers/core/deadly_falls/on"}},{"text":"     ","hoverEvent": {"action":"show_text","contents":[{"text":"Any amount of fall damage is lethal. Pro tip: get a water bucket.","color":"#ECEFF5"}]}},{"text":"All fall damage kills you","bold":false,"color":"#ff7700","hoverEvent": {"action":"show_text","contents":[{"text":"Any amount of fall damage is lethal. Pro tip: get a water bucket.","color":"#ECEFF5"}]}}]


execute if score deadly_falls minecraft_but.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/minecraft_but.coreion minecraft_but.core:menu/modifiers/core/deadly_falls/off"}},{"text":"     ","hoverEvent": {"action":"show_text","contents":[{"text":"Any amount of fall damage is lethal. Pro tip: get a water bucket.","color":"#ECEFF5"}]}},{"text":"All fall damage kills you","bold":false,"color":"#ff7700","hoverEvent": {"action":"show_text","contents":[{"text":"Any amount of fall damage is lethal. Pro tip: get a water bucket.","color":"#ECEFF5"}]}}]

## You can't stop moving (keep_moving)
execute unless score keep_moving minecraft_but.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/minecraft_but.coreion minecraft_but.core:menu/modifiers/core/keep_moving/on"}},{"text":"     ","hoverEvent": {"action":"show_text","contents":[{"text":"Keep moving, buddy. Or else. Crafting something? Be quick there, pal. You don't want to stay still for too long, friend.","color":"#ECEFF5"}]}},{"text":"You can't stop moving","bold":false,"color":"#ff7700","hoverEvent": {"action":"show_text","contents":[{"text":"Keep moving, buddy. Or else. Crafting something? Be quick there, pal. You don't want to stay still for too long, friend.","color":"#ECEFF5"}]}}]


execute if score keep_moving minecraft_but.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/minecraft_but.coreion minecraft_but.core:menu/modifiers/core/keep_moving/off"}},{"text":"     ","hoverEvent": {"action":"show_text","contents":[{"text":"Keep moving, buddy. Or else. Crafting something? Be quick there, pal. You don't want to stay still for too long, friend.","color":"#ECEFF5"}]}},{"text":"You can't stop moving","bold":false,"color":"#ff7700","hoverEvent": {"action":"show_text","contents":[{"text":"Keep moving, buddy. Or else. Crafting something? Be quick there, pal. You don't want to stay still for too long, friend.","color":"#ECEFF5"}]}}]

