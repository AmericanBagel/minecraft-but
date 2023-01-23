#> minecraft_but.core:modifiers/tnt_rain/main
# Main function for "tnt Rain" modifier
# @context root
# @within minecraft_but.core:modifiers/directory
# @input
#   score tnt_rain.keep minecraft_but.config
#       Config for whether tnts should
#       leave tnts on the ground or not
#   score tnt_rain.chance minecraft_but.config
#       How many times to spawn tnts
# @output
#   score tnt_rain.loop
#       How many loops left based on tnt_rain.chance

#> Remove TNT before explosion if enabled
execute as @e[type=tnt,tag=minecraft_but.tnt_rain,nbt={Fuse:1s}, tag=!global.ignore] at @s run function minecraft_but.core:modifiers/tnt_rain/replace_tnt

#> Loop
# Set loop (which decrements until 0) to chance enum in config
scoreboard players operation $loop minecraft_but.tnt_rain = tnt_rain.chance minecraft_but.config

# Start the loop
function minecraft_but.core:modifiers/tnt_rain/loop