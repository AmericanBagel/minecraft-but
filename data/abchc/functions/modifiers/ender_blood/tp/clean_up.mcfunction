#> abchc:modifiers/ender_blood/tp/clean_up
# Clean up everything after either TP was successful or failed.
# Kill old markers, clear scoreboards, general clean up
# @within abchc:modifiers/ender_blood/tp/clean_up

# Kill all markers
kill @e[tag=abch.ender_blood]

# Reset scoreboards
scoreboard players reset * abch.ender_blood