#> minecraft_but.coreraft_but.core:modifiers/death_orb/get_distance
#
# Get distance in blocks between player and death orb
#
# @context orb
# @within minecraft_but.coreraft_but.core:modifiers/death_orb/**
# @output
#   score @s minecraft_but.death_orb.distance
#       The distance between player and death orb

# Get distance between player and death orb by a factor of 1000
function minecraft_but.coreraft_but.core:apis/dist/calc
scoreboard players operation @s minecraft_but.death_orb.distance = $out temp

# Divide result by 1000 to get distance in blocks
scoreboard players set $divisor minecraft_but.death_orb.distance 1000
scoreboard players operation @s minecraft_but.death_orb.distance /= $divisor minecraft_but.death_orb.distance