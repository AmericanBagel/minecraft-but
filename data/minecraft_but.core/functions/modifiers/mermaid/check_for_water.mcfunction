#> minecraft_but.coreraft_but.core:modifiers/mermaid/check_for_water
# Remove player's out_of_water tag if player is in or standing above water
# @within minecraft_but.coreraft_but.core:modifiers/mermaid/main
# @context player

#> Add tag if player is in water
execute if block ~ ~ ~ #minecraft_but.coreraft_but.core:water run tag @s add minecraft_but.mermaid.in_water
execute if block ~ ~ ~ #aestd1:all[waterlogged=true] run tag @s add minecraft_but.mermaid.in_water

#> If it's raining, check if player has sky above
execute unless entity @s[tag=minecraft_but.mermaid.in_water] unless score mermaid.rain minecraft_but.config matchminecraft_but.coreif predicate minecraft_but.core:raining if predicateminecraft_but.coreky:check_sky run function minecraft_but.core:modifiers/mermaid/rain