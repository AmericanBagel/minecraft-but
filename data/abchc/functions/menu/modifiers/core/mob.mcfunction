#> abchc:menu/modifiers/core/mob
# List "Mob" type modifiers
# @within abchc:menu/**
# @context menu player

#> Click sound
function abchc:menu/actions/click

#> Update page score
scoreboard players set @s abch.menu.page 18

#> Disable sendCommandFeedback
gamerule sendCommandFeedback false

#> Set sendCommandFeedback back next tick
schedule function abchc:menu/actions/enable_feedback 1t append

#> Header

# If there are no expansion loaded, clicking top bar sends player back to main menu.
# Doing this gets rid of that unnecessary step between directory and page 1 here.
execute unless score $total abch.expansion matches 1.. run tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"---------------------------------------------","color":"#0F21C6"},"\n",{"text":"←|","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/actions/back_to_main"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back to the main menu.","color":"#ECEFF5"}]}},{"text":" Mob","color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/actions/back_to_main"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back to the main menu.","color":"#ECEFF5"}]}},"\n",{"text":"---------------------------------------------","color":"#0F21C6"}]

# If there is an expansion loaded, clicking top bar sends the player to the modifiers directory
# which has links to the different expansion packs' modifiers pages.
execute if score $total abch.expansion matches 1.. run execute unless score $total abch.expansion matches 1.. run tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"---------------------------------------------","color":"#0F21C6"},"\n",{"text":"←|","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/directory"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back to the modifiers category page.","color":"#ECEFF5"}]}},{"text":" Modifier Categories","color":"#E4EB18","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/directory"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back to the modifiers category page.","color":"#ECEFF5"}]}},"\n",{"text":"---------------------------------------------","color":"#0F21C6"}]

#> Modifiers
## Mobs
# Bats are OP (op_bats)
# Ghasts spawn in the overworld (overworld_ghasts)
# Pigs are everywhere (pigification)
# Pigs turn into piglins (Piglinator)
# Spiders become realistic (realistic_spiders)
# Towers of pigs spawn (stacked_pigs)
# Skeletons fly on bats (flying_skeletons)

## Bats are OP (op_bats)
# Bats: useless no more. 
execute unless score op_bats abch.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/op_bats/on"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/op_bats/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/op_bats/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/op_bats/config"}},{"text":"Bats are OP","bold":false,"color":"#22ff37","hoverEvent": {"action":"show_text","contents":[{"text":"Bats: useless no more."}]}}]
execute if score op_bats abch.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/op_bats/off"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/op_bats/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/op_bats/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/op_bats/config"}},{"text":"Bats are OP","bold":false,"color":"#22ff37","hoverEvent": {"action":"show_text","contents":[{"text":"Bats: useless no more."}]}}]

## Ghasts spawn in the overworld (overworld_ghasts)
# Because we need more flying mobs! Why not ones that shoot fireballs and sound like angry cats? 
execute unless score overworld_ghasts abch.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/overworld_ghasts/on"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/overworld_ghasts/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/overworld_ghasts/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/overworld_ghasts/config"}},{"text":"Ghasts spawn in the overworld","bold":false,"color":"#46dd37","hoverEvent": {"action":"show_text","contents":[{"text":"Because we need more flying mobs! Why not ones that shoot fireballs and sound like angry cats?"}]}}]
execute if score overworld_ghasts abch.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/overworld_ghasts/off"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/overworld_ghasts/config"}},{"text":"⚙","bold":true,"color":"#46dd37","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/overworld_ghasts/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/overworld_ghasts/config"}},{"text":"Ghasts spawn in the overworld","bold":false,"color":"#ECEFF5","hoverEvent": {"action":"show_text","contents":[{"text":"Because we need more flying mobs! Why not ones that shoot fireballs and sound like angry cats?"}]}}]

## Pigs are everywhere (pigification)
# Mobs turn into pigs randomly. More pigs. 
execute unless score pigification abch.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/pigification/on"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/pigification/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/pigification/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/pigification/config"}},{"text":"Pigs are everywhere","bold":false,"color":"#6bbc37","hoverEvent": {"action":"show_text","contents":[{"text":"Mobs turn into pigs randomly. More pigs."}]}}]
execute if score pigification abch.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/pigification/off"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/pigification/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/pigification/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/pigification/config"}},{"text":"Pigs are everywhere","bold":false,"color":"#6bbc37","hoverEvent": {"action":"show_text","contents":[{"text":"Mobs turn into pigs randomly. More pigs."}]}}]

## Pigs turn into piglins (piglinator)
# Pigs randomly turn into piglins. Great when combined with \"Pigs Are Everywhere\". 
execute unless score piglinator abch.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/piglinator/on"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/piglinator/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/piglinator/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/piglinator/config"}},{"text":"Pigs turn into piglins","bold":false,"color":"#909b37","hoverEvent": {"action":"show_text","contents":[{"text":"Pigs randomly turn into piglins. Great when combined with \"Pigs Are Everywhere\"."}]}}]
execute if score piglinator abch.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/piglinator/off"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/piglinator/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/piglinator/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/piglinator/config"}},{"text":"Pigs turn into piglins","bold":false,"color":"#909b37","hoverEvent": {"action":"show_text","contents":[{"text":"Pigs randomly turn into piglins. Great when combined with \"Pigs Are Everywhere\"."}]}}]

## Towers of pigs spawn (stacked_pigs)
# TOWER OF PIGS SPAWN! BACON TOWERS! Great with \"Pigs Turn Into Piglins\"! 
execute unless score stacked_pigs abch.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/stacked_pigs/on"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/stacked_pigs/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/stacked_pigs/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/stacked_pigs/config"}},{"text":"Towers of pigs spawn","bold":false,"color":"#b57937","hoverEvent": {"action":"show_text","contents":[{"text":"TOWER OF PIGS SPAWN! BACON TOWERS! Great with \"Pigs Turn Into Piglins\"!"}]}}]
execute if score stacked_pigs abch.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/stacked_pigs/off"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/stacked_pigs/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/stacked_pigs/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/stacked_pigs/config"}},{"text":"Towers of pigs spawn","bold":false,"color":"#b57937","hoverEvent": {"action":"show_text","contents":[{"text":"TOWER OF PIGS SPAWN! BACON TOWERS! Great with \"Pigs Turn Into Piglins\"!"}]}}]

## Spiders get new abilities (realistic_spiders)
# Shooting webs, injecting poison, jumping toward players, summoning cave spiders, spiders transform from a boring, annoying mobs to dangerous threats. 
execute unless score realistic_spiders abch.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/realistic_spiders/on"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/realistic_spiders/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/realistic_spiders/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/realistic_spiders/config"}},{"text":"Spiders get new abilities","bold":false,"color":"#da5837","hoverEvent": {"action":"show_text","contents":[{"text":"Shooting webs, injecting poison, jumping toward players, summoning cave spiders, spiders transform from a boring, annoying mobs to dangerous threats."}]}}]
execute if score realistic_spiders abch.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/realistic_spiders/off"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/realistic_spiders/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/realistic_spiders/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/realistic_spiders/config"}},{"text":"Spiders get new abilities","bold":false,"color":"#da5837","hoverEvent": {"action":"show_text","contents":[{"text":"Shooting webs, injecting poison, jumping toward players, summoning cave spiders, spiders transform from a boring, annoying mobs to dangerous threats."}]}}]

## Skeletons fly (flying_skeletons)
# Thought skeletons were annoying enough? Try hitting them now! 
execute unless score flying_skeletons abch.toggle matches 1 run tellraw @s [{"text":" [✖] ","bold":false,"color":"#FF0000","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/flying_skeletons/on"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/flying_skeletons/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/flying_skeletons/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/flying_skeletons/config"}},{"text":"Skeletons fly","bold":false,"color":"#ff3737","hoverEvent": {"action":"show_text","contents":[{"text":"Thought skeletons were annoying enough? Try hitting them now!"}]}}]
execute if score flying_skeletons abch.toggle matches 1 run tellraw @s [{"text":" [✔] ","bold":false,"color":"#3ED011","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/flying_skeletons/off"}},{"text":"[","color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/flying_skeletons/config"}},{"text":"⚙","bold":true,"color":"#CACACA","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/flying_skeletons/config"}},{"text":"] ","color":"#CACACA","bold":false,"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/flying_skeletons/config"}},{"text":"Skeletons fly","bold":false,"color":"#ff3737","hoverEvent": {"action":"show_text","contents":[{"text":"Thought skeletons were annoying enough? Try hitting them now!"}]}}]

## Mobs
# Bats are OP (op_bats)
# Ghasts spawn in the overworld (overworld_ghasts)
# Pigs are everywhere (pigification)
# Pigs turn into piglins (Piglinator)
# Spiders become realistic (realistic_spiders)
# Towers of pigs spawn (stacked_pigs)
# Skeletons fly on bats (flying_skeletons)