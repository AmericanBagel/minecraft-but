#> abchc:modifiers/fire_walker/select_z
# Select Z position
# @within abchc:modifiers/fire_walker/main
# @context player

#> Get random bool for positive or negative
scoreboard players set in abch.rng.math 0
scoreboard players set in1 abch.rng.math 1
function abchc:apis/rng/range

#> Select between positive or negative
execute if score out abch.rng.math matches 0 run function abchc:modifiers/fire_walker/z/negative
execute if score out abch.rng.math matches 1 run function abchc:modifiers/fire_walker/z/positive