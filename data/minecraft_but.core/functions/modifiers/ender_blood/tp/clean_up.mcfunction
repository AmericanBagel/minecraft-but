#> minecraft_but.coreraft_but.core:modifiers/ender_blood/tp/clean_up
# Clean up everything after either TP was successful or failed.
# Kill old markers, clear scoreboards, general clean up
# @within minecraft_but.coreraft_but.core:modifiers/ender_blood/tp/clean_up

# Kill all markers
kill @e[tag=minecraft_but.ender_blood]

# Reset scoreboards
scoreboard players reset * minecraft_but.ender_blood