#> minecraft_but.core:modifiers/random_teleport/tp/clean_up
# Clean up everything after either TP was successful or failed.
# Kill old markers, clear scoreboards, general clean up
# @within minecraft_but.core:modifiers/random_teleport/tp/clean_up

# Kill all markers
kill @e[tag=minecraft_but.random_teleport]

# Reset scoreboards
scoreboard players reset * minecraft_but.random_teleport