#> abchc:menu/modifiers/core/mobs
# List of Mobs (mobs) modifiers. This file is automatically generated.
# @within abchc:menu/**
# @context menu player

#> Click sound
function abchc:menu/actions/click

#> Update page score
scoreboard players set @s abch.menu.page 12

#> Disable sendCommandFeedback
gamerule sendCommandFeedback false

#> Set sendCommandFeedback back next tick
schedule function abchc:menu/actions/enable_feedback 1t append

#> Header

# If there are no expansion loaded, clicking top bar sends player back to main menu.
# Doing this gets rid of that unnecessary step between directory and page 1 here.
execute unless score $total abch.expansion matches 1.. run tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"---------------------------------------------","color":"#0F21C6"},"\n",{"text":"←|","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/actions/back_to_main"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back to the main menu.","color":"#ECEFF5"}]}},{"text":" Mobs","color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/actions/back_to_main"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back to the main menu.","color":"#ECEFF5"}]}},"\n",{"text":"---------------------------------------------","color":"#0F21C6"}]

# If there is an expansion loaded, clicking top bar sends the player to the modifiers directory
# which has links to the different expansion packs' modifiers pages.
execute if score $total abch.expansion matches 1.. run execute unless score $total abch.expansion matches 1.. run tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"---------------------------------------------","color":"#0F21C6"},"\n",{"text":"←|","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/directory"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back to the modifiers category page.","color":"#ECEFF5"}]}},{"text":" Modifier Categories","color":"#E4EB18","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/directory"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back to the modifiers category page.","color":"#ECEFF5"}]}},"\n",{"text":"---------------------------------------------","color":"#0F21C6"}]

#> Modifiers
## Phantoms explode (explosive_phantoms)
execute unless score explosive_phantoms abch.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/explosive_phantoms/on"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/explosive_phantoms/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/explosive_phantoms/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/explosive_phantoms/config"}},{"text":"Phantoms explode","bold":false,"color":"#22ff37","hoverEvent": {"action":"show_text","contents":[{"text":"You'd better sleep. These guys aren't just angry. They're explosive.","color":"#ECEFF5"}]}}]



execute if score explosive_phantoms abch.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/explosive_phantoms/off"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/explosive_phantoms/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/explosive_phantoms/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/explosive_phantoms/config"}},{"text":"Phantoms explode","bold":false,"color":"#22ff37","hoverEvent": {"action":"show_text","contents":[{"text":"You'd better sleep. These guys aren't just angry. They're explosive.","color":"#ECEFF5"}]}}]

## Bats are OP (op_bats)
execute unless score op_bats abch.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/op_bats/on"}},{"text":"     ","hoverEvent": {"action":"show_text","contents":[{"text":"Bats: useless no more.","color":"#ECEFF5"}]}},{"text":"Bats are OP","bold":false,"color":"#42e237","hoverEvent": {"action":"show_text","contents":[{"text":"Bats: useless no more.","color":"#ECEFF5"}]}}]


execute if score op_bats abch.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/op_bats/off"}},{"text":"     ","hoverEvent": {"action":"show_text","contents":[{"text":"Bats: useless no more.","color":"#ECEFF5"}]}},{"text":"Bats are OP","bold":false,"color":"#42e237","hoverEvent": {"action":"show_text","contents":[{"text":"Bats: useless no more.","color":"#ECEFF5"}]}}]

## Ghasts spawn in the overworld (overworld_ghasts)
execute unless score overworld_ghasts abch.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/overworld_ghasts/on"}},{"text":"     ","hoverEvent": {"action":"show_text","contents":[{"text":"Because we need more flying mobs! Why not ones that shoot fireballs and sound like angry cats? ","color":"#ECEFF5"}]}},{"text":"Ghasts spawn in the overworld","bold":false,"color":"#61c637","hoverEvent": {"action":"show_text","contents":[{"text":"Because we need more flying mobs! Why not ones that shoot fireballs and sound like angry cats? ","color":"#ECEFF5"}]}}]


execute if score overworld_ghasts abch.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/overworld_ghasts/off"}},{"text":"     ","hoverEvent": {"action":"show_text","contents":[{"text":"Because we need more flying mobs! Why not ones that shoot fireballs and sound like angry cats? ","color":"#ECEFF5"}]}},{"text":"Ghasts spawn in the overworld","bold":false,"color":"#61c637","hoverEvent": {"action":"show_text","contents":[{"text":"Because we need more flying mobs! Why not ones that shoot fireballs and sound like angry cats? ","color":"#ECEFF5"}]}}]

## Mobs get pigified (pigification)
execute unless score pigification abch.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/pigification/on"}},{"text":"     ","hoverEvent": {"action":"show_text","contents":[{"text":"Mobs turn into pigs randomly. More pigs. Any complaints? No? Good.","color":"#ECEFF5"}]}},{"text":"Mobs get pigified","bold":false,"color":"#81a937","hoverEvent": {"action":"show_text","contents":[{"text":"Mobs turn into pigs randomly. More pigs. Any complaints? No? Good.","color":"#ECEFF5"}]}}]


execute if score pigification abch.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/pigification/off"}},{"text":"     ","hoverEvent": {"action":"show_text","contents":[{"text":"Mobs turn into pigs randomly. More pigs. Any complaints? No? Good.","color":"#ECEFF5"}]}},{"text":"Mobs get pigified","bold":false,"color":"#81a937","hoverEvent": {"action":"show_text","contents":[{"text":"Mobs turn into pigs randomly. More pigs. Any complaints? No? Good.","color":"#ECEFF5"}]}}]

## Pigs turn into piglins (piglinator)
execute unless score piglinator abch.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/piglinator/on"}},{"text":"     ","hoverEvent": {"action":"show_text","contents":[{"text":"Pigs randomly turn into piglins. Great when combined with \"Mobs get pigified\".","color":"#ECEFF5"}]}},{"text":"Pigs turn into piglins","bold":false,"color":"#a08d37","hoverEvent": {"action":"show_text","contents":[{"text":"Pigs randomly turn into piglins. Great when combined with \"Mobs get pigified\".","color":"#ECEFF5"}]}}]


execute if score piglinator abch.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/piglinator/off"}},{"text":"     ","hoverEvent": {"action":"show_text","contents":[{"text":"Pigs randomly turn into piglins. Great when combined with \"Mobs get pigified\".","color":"#ECEFF5"}]}},{"text":"Pigs turn into piglins","bold":false,"color":"#a08d37","hoverEvent": {"action":"show_text","contents":[{"text":"Pigs randomly turn into piglins. Great when combined with \"Mobs get pigified\".","color":"#ECEFF5"}]}}]

## Towers of pigs spawn (stacked_pigs)
execute unless score stacked_pigs abch.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/stacked_pigs/on"}},{"text":"     ","hoverEvent": {"action":"show_text","contents":[{"text":"TOWER OF PIGS SPAWN! BACON TOWERS! Great with \"Pigs turn into piglins\"! ","color":"#ECEFF5"}]}},{"text":"Towers of pigs spawn","bold":false,"color":"#c07037","hoverEvent": {"action":"show_text","contents":[{"text":"TOWER OF PIGS SPAWN! BACON TOWERS! Great with \"Pigs turn into piglins\"! ","color":"#ECEFF5"}]}}]


execute if score stacked_pigs abch.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/stacked_pigs/off"}},{"text":"     ","hoverEvent": {"action":"show_text","contents":[{"text":"TOWER OF PIGS SPAWN! BACON TOWERS! Great with \"Pigs turn into piglins\"! ","color":"#ECEFF5"}]}},{"text":"Towers of pigs spawn","bold":false,"color":"#c07037","hoverEvent": {"action":"show_text","contents":[{"text":"TOWER OF PIGS SPAWN! BACON TOWERS! Great with \"Pigs turn into piglins\"! ","color":"#ECEFF5"}]}}]

## Spiders get new abilities (realistic_spiders)
execute unless score realistic_spiders abch.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/realistic_spiders/on"}},{"text":"     ","hoverEvent": {"action":"show_text","contents":[{"text":"Shooting webs, injecting poison, jumping toward players, summoning cave spiders, spiders transform from a boring, annoying mobs to dangerous threats. ","color":"#ECEFF5"}]}},{"text":"Spiders get new abilities","bold":false,"color":"#df5437","hoverEvent": {"action":"show_text","contents":[{"text":"Shooting webs, injecting poison, jumping toward players, summoning cave spiders, spiders transform from a boring, annoying mobs to dangerous threats. ","color":"#ECEFF5"}]}}]


execute if score realistic_spiders abch.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/realistic_spiders/off"}},{"text":"     ","hoverEvent": {"action":"show_text","contents":[{"text":"Shooting webs, injecting poison, jumping toward players, summoning cave spiders, spiders transform from a boring, annoying mobs to dangerous threats. ","color":"#ECEFF5"}]}},{"text":"Spiders get new abilities","bold":false,"color":"#df5437","hoverEvent": {"action":"show_text","contents":[{"text":"Shooting webs, injecting poison, jumping toward players, summoning cave spiders, spiders transform from a boring, annoying mobs to dangerous threats. ","color":"#ECEFF5"}]}}]

## Skeletons fly (flying_skeletons)
execute unless score flying_skeletons abch.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/flying_skeletons/on"}},{"text":"     ","hoverEvent": {"action":"show_text","contents":[{"text":"Thought skeletons were annoying enough? Try hitting them now! ","color":"#ECEFF5"}]}},{"text":"Skeletons fly","bold":false,"color":"#ff3737","hoverEvent": {"action":"show_text","contents":[{"text":"Thought skeletons were annoying enough? Try hitting them now! ","color":"#ECEFF5"}]}}]


execute if score flying_skeletons abch.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/flying_skeletons/off"}},{"text":"     ","hoverEvent": {"action":"show_text","contents":[{"text":"Thought skeletons were annoying enough? Try hitting them now! ","color":"#ECEFF5"}]}},{"text":"Skeletons fly","bold":false,"color":"#ff3737","hoverEvent": {"action":"show_text","contents":[{"text":"Thought skeletons were annoying enough? Try hitting them now! ","color":"#ECEFF5"}]}}]

## Mobs get yeeted (yeet)
execute unless score yeet abch.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/yeet/on"}},{"text":"     ","hoverEvent": {"action":"show_text","contents":[{"text":"Just going to the farm and... THE COWS GOT OUT? THEY GOT YEETED OUT? HOLY COW!\n\nMobs will randomly get yeeted in a random direction.","color":"#ECEFF5"}]}},{"text":"Mobs get yeeted","bold":false,"color":"#ff3737","hoverEvent": {"action":"show_text","contents":[{"text":"Just going to the farm and... THE COWS GOT OUT? THEY GOT YEETED OUT? HOLY COW!\n\nMobs will randomly get yeeted in a random direction.","color":"#ECEFF5"}]}}]


execute if score yeet abch.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/yeet/off"}},{"text":"     ","hoverEvent": {"action":"show_text","contents":[{"text":"Just going to the farm and... THE COWS GOT OUT? THEY GOT YEETED OUT? HOLY COW!\n\nMobs will randomly get yeeted in a random direction.","color":"#ECEFF5"}]}},{"text":"Mobs get yeeted","bold":false,"color":"#ff3737","hoverEvent": {"action":"show_text","contents":[{"text":"Just going to the farm and... THE COWS GOT OUT? THEY GOT YEETED OUT? HOLY COW!\n\nMobs will randomly get yeeted in a random direction.","color":"#ECEFF5"}]}}]

