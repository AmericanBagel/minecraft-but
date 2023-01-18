#> abchc:modifiers/random_structures/loop
# Loop place feature spawn attempts based on default chance value
# @within abchc:modifiers/random_structures/start_loop_default
# @context player

#> Chance to place feature
execute if predicate abchc:25pct run function abchc:modifiers/random_structures/pick_place

#> Remove counter
scoreboard players remove #counter abch.modifier.temp 1

#tellraw @a [{"score":{"name": "#counter","objective": "abch.modifier.temp"}}]

#> Continue loop
execute if score #counter abch.modifier.temp matches 1.. run function abchc:modifiers/random_structures/loop