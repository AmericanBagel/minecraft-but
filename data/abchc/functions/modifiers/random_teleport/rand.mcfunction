#> abchc:modifiers/random_teleport/rand
# Roll to teleport player
# @within abchc:modifiers/random_teleport/main
# @context player

#> RNG
# Set minimum
scoreboard players set in abch.rng.math 1

# Set maximum to 2000 (100 * 20 for chance to teleport per second)
scoreboard players set in1 abch.rng.math 2000

# Roll
function abchc:apis/rng/range

#> If random number is within max chance, teleport
execute if score out abch.rng.math <= random_teleport.chance abch.config run function abchc:modifiers/random_teleport/tp