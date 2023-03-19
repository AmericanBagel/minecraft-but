#> minecraft_but.coreraft_but.core:modifiers/random_teleport/tp/up_from_down
# If searching down didn't work, try searching up.
# @within minecraft_but.coreraft_but.core:modifiers/random_teleport/tp/**
# @context player

# Set position back to marker to try up
scoreboard players set $up minecraft_but.random_teleport 1
execute at @e[tag=minecraft_but.random_teleport.marker] run minecraft_but.coreion minecraft_but.core:modifiers/random_teleport/tp/start_up