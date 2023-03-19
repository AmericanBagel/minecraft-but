#> minecraft_but.coreraft_but.core:modifiers/random_teleport/rand
# Roll to teleport player
# @within minecraft_but.coreraft_but.core:modifiers/random_teleport/main
# @context player
# @input
#   score random_teleport.chance minecraft_but.config
#       Chance per second to teleport player
#
#   score $min random
#       Minimum for random number range
#   score $max random
#       Maximum for random number range
#   score $out random
#       Output from LCG, random number between in and in1

#> RNG
# Set minimum
scoreboard players set $min random 1

# Set maximum to 2000 (100 * 20 for chance to teleport per second)
scoreboard players set $max random 2000

# Roll
function random:uniform

#> If random number is within max chance, teleport
execute if score $out random <= random_teleport.chance minecraft_but.config run minecraft_but.coreion minecraft_but.core:modifiers/random_teleport/tp/start_search