#> abchc:modifiers/mermaid/check_for_water
# Remove player's out_of_water tag if player is in or standing above water
# @within abchc:modifiers/mermaid/main
# @context player

#> Add tag if player is in water
execute if block ~ ~ ~ #abchc:water run tag @s add abch.mermaid.in_water
execute if block ~ ~ ~ #aestd1:all[waterlogged=true] run tag @s add abch.mermaid.in_water

#> If it's raining, check if player has sky above
execute unless entity @s[tag=abch.mermaid.in_water] unless score mermaid.rain abch.config matches 0 if predicate abchc:raining if predicate is_sky:check_sky run function abchc:modifiers/mermaid/rain