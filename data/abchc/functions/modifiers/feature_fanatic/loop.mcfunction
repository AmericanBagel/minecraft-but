#> abchc:modifiers/feature_fanatic/loop
# Loop placefeature spawn attempts based on default chance value
# @within abchc:modifiers/feature_fanatic/start_loop_default
# @context player

#> Chance to place feature
function abchc:modifiers/feature_fanatic/placefeature_init

#> Remove counter
scoreboard players remove #counter abch.modifier.temp 1

#> Continue loop
execute if score #counter abch.modifier.temp matches 1.. run function abchc:modifiers/feature_fanatic/loop