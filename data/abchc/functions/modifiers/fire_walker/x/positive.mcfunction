#> abchc:modifiers/fire_walker/x/positive
# Set position to random positive X coordinates

#> Get Y
function abchc:modifiers/fire_walker/get_block

#> Set position based on random number
execute if score out abch.rng.math matches 1 positioned ~ ~ ~ run function abchc:modifiers/fire_walker/select_z
execute if score out abch.rng.math matches 2 positioned ~1 ~ ~ run function abchc:modifiers/fire_walker/select_z
execute if score out abch.rng.math matches 3 positioned ~2 ~ ~ run function abchc:modifiers/fire_walker/select_z
execute if score out abch.rng.math matches 4 positioned ~3 ~ ~ run function abchc:modifiers/fire_walker/select_z
execute if score out abch.rng.math matches 5 positioned ~4 ~ ~ run function abchc:modifiers/fire_walker/select_z
execute if score out abch.rng.math matches 6 positioned ~6 ~ ~ run function abchc:modifiers/fire_walker/select_z