#> abchc:modifiers/death_orb/get_distance
#
# Get distance in blocks between player and death orb
#
# @context orb
# @within abchc:modifiers/death_orb/**
# @output
#   score @s abch.death_orb.distance
#       The distance between player and death orb

# Get distance between player and death orb by a factor of 1000
function abchc:apis/dist/calc
scoreboard players operation @s abch.death_orb.distance = $out temp

# Divide result by 1000 to get distance in blocks
scoreboard players set $divisor abch.death_orb.distance 1000
scoreboard players operation @s abch.death_orb.distance /= $divisor abch.death_orb.distance