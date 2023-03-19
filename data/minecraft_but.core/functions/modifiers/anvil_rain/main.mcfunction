#> minecraft_but.coreraft_but.core:modifiers/anvil_rain/main
# Main function for "Anvil Rain" modifier
# @context root
# @within minecraft_but.coreraft_but.core:modifiers/directory
# @input
#   score anvil_rain.keep minecraft_but.config
#       Config for whether anvils should
#       leave anvils on the ground or not
#   score anvil_rain.chance minecraft_but.config
#       How many times to spawn anvils
# @output
#   score anvil_rain.loop
#       How many loops left based on anvil_rain.chance

#> Remove anvils when they land unless disabled
execute as @e[ name="minecraft_but.anvil_rain.marker" ] at @s unless score anvil_rain.keep minecraft_but.config matchminecraft_but.corerun function minecraft_but.core:modifiers/anvil_rain/mark_destroy
execute as @e[ name="minecraft_but.anvil_rain.marker" ] at @s if score anvil_rain.keep minecraft_but.config matches 1 unless entity @e[ type=falling_block, tag=minecraft_but.anvil, distance=..0.75 ] run kill @s

#> Loop
# Set loop (which decrements until 0) to chance enum in config
scoreboard players operation $loop minecraft_but.anvil_rain = anvil_rain.chance minecraft_but.config

# Start the loop
function minecraft_but.coreraft_but.core:modifiers/anvil_rain/loop