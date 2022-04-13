#> abchc:modifiers/tnt_bats/try_spawn
# Try to spawn a bat from a non-bat entity
# @within abchc:modifiers/tnt_bats/**
# @context non-bat mob
# @input
#   score tnt_bats.percent abch.config
#       Percent chance to spawn a new bat from a non-bat entity

#> Get random number between 1 and 100
scoreboard players set in abch.rng.math 1
scoreboard players set in1 abch.rng.math 100
function abchc:apis/rng/range

#> If the number is within the percent range, spawn
execute if score out abch.rng.math <= tnt_bats.percent abch.config run function abchc:modifiers/tnt_bats/spawn_bat

#> Tag entity so entity won't run this function again
tag @s add abch.tnt_bats.spawned