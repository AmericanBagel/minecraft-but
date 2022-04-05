#> abchc:modifiers/tnt_rain/main
# Main function for "tnt Rain" modifier
# @context root
# @within abchc:modifiers/directory
# @input
#   score tnt_rain.keep abch.config
#       Config for whether tnts should
#       leave tnts on the ground or not
#   score tnt_rain.chance abch.config
#       How many times to spawn tnts
# @output
#   score tnt_rain.loop
#       How many loops left based on tnt_rain.chance

#> Remove tnts when they land unless disabled
execute as @e[ name="abch.tnt_rain.marker" ] at @s unless score tnt_rain.keep abch.config matches 1 run function abchc:modifiers/tnt_rain/mark_destroy

#> Loop
# Set loop (which decrements until 0) to chance enum in config
scoreboard players operation tnt_rain.loop abch.config = tnt_rain.chance abch.config
scoreboard players set tnt_rain.loop abch.config 1

# Start the loop
function abchc:modifiers/tnt_rain/loop