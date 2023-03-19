#> minecraft_but.core:modifiers/random_teleport/tp/tp_down
# Ground was found below and was picked. TP player down.
# @within minecraft_but.core:modifiers/random_teleport/tp/compare
# @context player

# TP to down marker
execute at @e[tag=minecraft_but.random_teleport.down] run tp @s ~ ~ ~

# Play TP sound effect
playsound entity.enderman.teleport master @s ~ ~ ~ 1 1

# Clean up everything
function minecraft_but.core:modifiers/random_teleport/tp/clean_up