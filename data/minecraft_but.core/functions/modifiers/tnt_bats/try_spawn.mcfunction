#> minecraft_but.coreraft_but.core:modifiers/tnt_bats/try_spawn
# Try to spawn a bat from a non-bat entity
# @within minecraft_but.coreraft_but.core:modifiers/tnt_bats/**
# @context non-bat mob
# @input
#   score tnt_bats.percent minecraft_but.config
#       Percent chance to spawn a new bat from a non-bat entity

#> Get random number between 1 and 100
scoreboard players set $min random 1
scoreboard players set $max random 100
function random:uniform

#> If the number is within the percent range, spawn
execute if score $out random <= tnt_bats.percent minecraft_but.config run minecraft_but.coreion minecraft_but.core:modifiers/tnt_bats/spawn_bat

#> Tag entity so entity won't run this function again
tag @s add minecraft_but.tnt_bats.spawned