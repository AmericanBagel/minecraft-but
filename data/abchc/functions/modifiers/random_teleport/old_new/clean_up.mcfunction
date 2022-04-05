#> abchc:modifiers/random_teleport/tp/clean_up
# Clean up everything after either TP was successful or failed.
# Kill old markers, clear scoreboards, general clean up
# @within abchc:modifiers/random_teleport/tp/clean_up

# Kill all markers
kill @e[tag=abch.random_teleport]

# Reset scoreboards
scoreboard players reset * abch.random_teleport