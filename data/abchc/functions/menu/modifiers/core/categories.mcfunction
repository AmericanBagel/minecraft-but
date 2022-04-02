#> abchc:menu/modifiers/core/categories
# Link to different categories
# @within abchc:menu/**
# @context menu player

#> Click sound
function abchc:menu/actions/click

#> Update page score
scoreboard players set @s abch.menu.page 11

#> Header

# If there are no expansion loaded, clicking top bar sends player back to main menu.
# Doing this gets rid of that unnecessary step between directory and page 1 here.
execute unless score $total abch.expansion matches 1.. run tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"---------------------------------------------","color":"#0F21C6"},"\n",{"text":"←|","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/actions/back_to_main"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back to the main menu.","color":"#ECEFF5"}]}},{"text":" Modifier Categories","color":"#17B7CD","clickEvent":{"action":"run_command","value":"/function abchc:menu/actions/back_to_main"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back to the main menu.","color":"#ECEFF5"}]}},"\n",{"text":"---------------------------------------------","color":"#0F21C6"}]

# If there is an expansion loaded, clicking top bar sends the player to the modifiers directory
# which has links to the different expansion packs' modifiers pages.
execute if score $total abch.expansion matches 1.. run execute unless score $total abch.expansion matches 1.. run tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"---------------------------------------------","color":"#0F21C6"},"\n",{"text":"←|","color":"#ECEFF5","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/directory"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back to the modifiers page.","color":"#ECEFF5"}]}},{"text":" Modifier Categories","color":"#17B7CD","clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/directory"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go back to the modifiers page.","color":"#ECEFF5"}]}},"\n",{"text":"---------------------------------------------","color":"#0F21C6"}]

#> Categories
#tellraw @s [{"text":" |→ ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"text":"Information","color":"#E4EB18"},{"text":" page which has information about this data pack and how to use it.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/information"}},{"text":"Information","color":"#E4EB18","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"text":"Information","color":"#E4EB18"},{"text":" page.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/information"}},"\n",{"text":" |→ ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"text":"Modifiers","color":"#CF2020"},{"text":" page which allows you to toggle and configure \"Minecraft, but\" gameplay modifiers.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers"}},{"text":"Modifiers","color":"#CF2020","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"text":"Modifiers","color":"#CF2020"},{"text":" page which allows you to toggle and configure \"Minecraft, but\" gameplay modifiers.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers"}},"\n",{"text":" |→ ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"text":"Config","color":"#20CBA8"},{"text":" page which allows you to configure the data pack.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/config"}},{"text":"Config","color":"#20CBA8","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"text":"Config","color":"#20CBA8"},{"text":" page which allows you to configure the data pack.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/config"}},"\n",{"text":" |→ ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"text":"Credits","color":"#A8A8A8"},{"text":" page which has a list of everyone who made this data pack possible!","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/credits"}},{"text":"Credits","color":"#A8A8A8","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"text":"Credits","color":"#A8A8A8"},{"text":" page which has a list of everyone who made this data pack possible!","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/credits"}},"\n",{"text":" |→ ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"text":"Admin Panel","color":"#801212"},{"text":" page for including and excluding players from being affected by modifiers and for selecting who can configure the data pack.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/admin_panel"}},{"text":"Admin Panel","color":"#801212","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"text":"Admin Panel","color":"#801212"},{"text":" page for including and excluding players from being affected by modifiers and for selecting who can configure the data pack.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/admin_panel"}},"\n"]

# Challenges
tellraw @s ["\n",{"text":" |→ ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"text":"Challenges","color":"#E4EB18"},{"text":" page which lists challenge modifiers.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/challenges"}},{"text":"Challenges","color":"#E4EB18","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"text":"Challenges","color":"#E4EB18"},{"text":" page which lists challenge modifiers.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/challenges"}}]

# Explosions
tellraw @s [{"text":" |→ ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"text":"Explosions","color":"#CF2020"},{"text":" page which lists challenge modifiers.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/explosions"}},{"text":"Explosions","color":"#CF2020","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"text":"Explosions","color":"#CF2020"},{"text":" page which lists explosion modifiers.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/explosions"}}]

# Chaos
tellraw @s [{"text":" |→ ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"text":"Chaos","color":"#FF0000"},{"text":" page which lists challenge modifiers.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/chaos"}},{"text":"Chaos","color":"#FF0000","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"text":"Chaos","color":"#FF0000"},{"text":" page which lists chaotic modifiers.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/chaos"}}]

# Mechanic
tellraw @s [{"text":" |→ ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"text":"Mechanic","color":"#20CBA8"},{"text":" page which lists challenge modifiers.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mechanic"}},{"text":"Mechanic","color":"#20CBA8","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"text":"Mechanic","color":"#20CBA8"},{"text":" page which lists mechanic modifiers -- modifiers which affect game mechanics like walking or jumping.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mechanic"}}]

# Teleporting
tellraw @s [{"text":" |→ ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"text":"Teleporting","color":"#C300FF"},{"text":" page which lists challenge modifiers.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/teleporting"}},{"text":"Teleporting","color":"#C300FF","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"text":"Teleporting","color":"#C300FF"},{"text":" page which lists teleportation modifiers.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/teleporting"}}]

# Effects
tellraw @s [{"text":" |→ ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"text":"Effects","color":"#17B7CD"},{"text":" page which lists challenge modifiers.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/effects"}},{"text":"Effects","color":"#17B7CD","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"text":"Effects","color":"#17B7CD"},{"text":" page which lists effect modifiers.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/effects"}}]

# Mobs
tellraw @s [{"text":" |→ ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"text":"Mobs","color":"#3ED011"},{"text":" page which lists challenge modifiers.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mob"}},{"text":"Mobs","color":"#3ED011","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"text":"Mobs","color":"#3ED011"},{"text":" page which lists mob modifiers.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mob"}}]

# Miscellaneous
tellraw @s [{"text":" |→ ","color":"#ECEFF5","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"text":"Miscellaneous","color":"#A8A8A8"},{"text":" page which lists challenge modifiers.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/mob"}},{"text":"Miscellaneous","color":"#A8A8A8","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to go to the ","color":"#ECEFF5"},{"text":"Miscellaneous","color":"#A8A8A8"},{"text":" page which lists mob modifiers.","color":"#ECEFF5"}]},"clickEvent":{"action":"run_command","value":"/function abchc:menu/modifiers/core/misc"}}]


# Challenges
# Explosions
# Chaos
# Teleporting
# Effects
# Mobs
# Miscellaneous

#> Minecraft, but...
## Challenges
# ! You have to live underwater (mermaid)
# ! You can't touch water (toxic_water)
# Nature kills you / You can't touch grass (botanophobia)
# Taking damage blinds you (blinding_damage)
# Light blinds you (blinding_light)
# Items randomly fall out of your inventory (lazy_inventory)
# You have no inventory (limited_inventory)
# You can only go one direction (look_straight)
# Fall damage kills you (deadly_falls)
# You can't stop moving (keep_moving)
# ! There's no gravity (no_gravity)
# ! Gravity is reversed (reverse_gravity)
# You always crawl (crawling)
# ! You can't eat meat (herbivore)
# ! You can only eat meat (carnivore)
# Colors kill you (deadly_colors)
# !? You can't jump (no_jump)
# !? You can't sneak (no_sneak)
# !? You can't walk (no_walk)
# !? You can't sprint (schlatt_mode)
# !? You can't kill anything (pacifists)

## Mobs
# Bats are OP (op_bats)
# Ghasts spawn in the overworld (overworld_ghasts)
# Pigs are everywhere (pigification)
# Pigs turn into piglins (Piglinator)
# Spiders become realistic (realistic_spiders)
# Towers of pigs spawn (stacked_pigs)
# Skeletons fly on bats (flying_skeletons)

## Teleporting
# Chorus fruit teleports you to other dimensions (teleport_chorus)
# You randomly teleport (random_teleport)
# Mobs randomly TP to you (mobs_tp_to_you)
# You teleport when you get hurt (ender_blood)

## Effects
# You get random effects (random_effect)
# Taking damage gives you a random potion effect (suspicious_injury)
# Arrows have random effects (effect_arrows)
# Food gives you random potion effects (potion_food)
# Players glow (players_glow)
# Mobs glow (mobs_glow)
# Taking damage nauseates you (damage_nausea)
# You are blind (blindness)

## Explosions
# Bats have TNT (tnt_bats)
# Giant meteors randomly rain from the sky (meteor)
# You randomly receive an explosive bush in your inventory (explosive_bush)
# Coal explodes (explosive_coal)
# Eggs explode (explosive_eggs)
# Phantoms explode (explosive_phantoms)
# Everywhere you look explodes (explosive_sight)
# Snowballs explode (explosive_snowballs)
# XP explodes (explosive_xp)
# Explosives are delicate (delicate_explosives)
# All mobs are creepers (creeper_mobs)
# Creepers are nuclear (creeper_nukes)
# Creepers spawn reinforcements (creeper_reinforcements)
# Creepers instantly explode (insta_creeper)
# Creepers are fast (fast_creepers)

## Chaos
# An orb of death relentlessly follows you (death_orb)
# Anvils rain from the sky (anvil_rain)
# Fire rains from the sky (fire_rain)
# You leave a trail of fire (fire_walker)
# Lightning is everywhere (storm)
# The world disintegrates (degradation) 
# Chunks randomly delete (chunk_error)
# It lags (lag)
# World generation features randomly spawn (feature_fanatic)

## Miscellaneous
# Arrows are fast (fast_arrows)
# Mobs explode into confetti when they die (confetti_funeral)
# ! Bedrock spawns beneath your feet (bedrock_touch)
# ! Blocks turn OP beneath you (midas_touch)
# It's SUPERHOT (superhot)
# Time randomly freezes (frozen_time)
# You have to social distance (2020_mode)

#> Unsorted
#> Modifiers
## Minecraft, but...
# You have to social distance (2020_mode)
# Anvils rain from the sky (anvil_rain)
# Bedrock spawns beneath your feet (bedrock_touch)
# Taking damage blinds you (blinding_damage)
# Light blinds you (blinding_light)
# You are blind (blindness)
# Nature kills you / You can't touch grass (botanophobia)
# You can only eat meat (carnivore)
# Chunks randomly delete (chunk_error)
# Mobs explode into confetti when they die (confetti_funeral)
# You always crawl (crawling)
# All mobs are creepers (creeper_mobs)
# Creepers are nuclear (creeper_nukes)
# Creepers spawn reinforcements (creeper_reinforcements)
# Taking damage nauseats you (damage_nausea)
# Colors kill you (deadly_colors)
# Fall damage kills you (deadly_falls)
# An orb of death relentlessly follows you (death_orb)
# The world disintegrate (degradation) 
# Explosives are delicate (delicate_explosives)
# Arrows have random effects (effect_arrows)
# You teleport when you get hurt (ender_blood)
# You randomly receive an explosive bush in your inventory (explosive_bush)
# Coal explodes (explosive_coal)
# Eggs explode (explosive_eggs)
# Phantoms explode (explosive_phantoms)
# Everywhere you look explodes (explosive_sight)
# Snowballs explode (explosive_snowballs)
# XP explodes (explosive_xp)
# Arrows are fast (fast_arrows)
# Creepers are fast (fast_creepers)
# World generation features randomly spawn (feature_fanatic)
# Fire rains from the sky (fire_rain)
# You leave a trail of fire (fire_walker)
# Skeletons fly on bats (flying_skeletons)
# Time randomly freezes (frozen_time)
# You can't eat meat (herbivore)
# Creepers instantly explode (insta_creeper)
# You can't stop moving (keep_moving)
# It lags (lag)
# Items randomly fall out of your inventory (lazy_inventory)
# Lightning is everywhere (storm)
# You have no inventory (limited_inventory)
# You can only go one direction (look_straight)
# You have to live underwater (mermaid)
# Water becomes toxic
# Giant meteors randomly rain from the sky (meteor)
# Blocks turn OP beneath you (midas_touch)
# Mobs glow (mobs_glow)
# Mobs randomly TP to you (mobs_to_to_you)
# There's no gravity (no_gravity)
# You can't jump (no_jump)
# You can't sneak (no_sneak)
# You can't walk (no_walk)
# Bats are OP (op_bats)
# Ghasts spawn in the overworld (overworld_ghasts)
# You can't kill anything (pacifists)
# Pigs are everywhere (pigification)
# Pigs turn into piglins (Piglinator)
# Players glow (players_glow)
# Food gives you random potion effects (potion_food)
# You get random effects (random_effect)
# You randomly teleport (random_teleport)
# Spiders become realistic (realistic_spiders)
# Gravity is reversed (reverse_gravity)
# You can't sprint (schlatt_mode)
# Towers of pigs spawn (stacked_pigs)
# It's SUPERHOT (superhot)
# Taking damage gives you a random potion effect (suspicious_injury)
# Chorus fruit teleports you to other dimensions (teleport_chorus)
# Bats have TNT (tnt_bats)