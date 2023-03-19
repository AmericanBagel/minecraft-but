#> minecraft_but.coreraft_but.core:modifiers/random_teleport/tp/tp_up
# Ground was found above and was picked. TP player up.
# @within minecraft_but.coreraft_but.core:modifiers/random_teleport/tp/compare
# @context player

# TP to down marker
execute at @e[tag=minecraft_but.random_teleport.up] run tp @s ~ ~ ~

# Play TP sound effect
playsound entity.enderman.teleport master @s ~ ~ ~ 1 1

# Clean up everything
function minecraft_but.coreraft_but.core:modifiers/random_teleport/tp/clean_up