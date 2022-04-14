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

#> Remove TNT before explosion if enabled
execute as @e[type=tnt,tag=abch.tnt_rain,nbt={Fuse:1s}] at @s run function abchc:modifiers/tnt_rain/replace_tnt

#> Loop
# Set loop (which decrements until 0) to chance enum in config
scoreboard players operation $loop abch.tnt_rain = tnt_rain.chance abch.config

# Start the loop
function abchc:modifiers/tnt_rain/loop