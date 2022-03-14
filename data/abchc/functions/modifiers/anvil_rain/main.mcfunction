#> abchc:modifiers/anvil_rain/main
# Main function for "Anvil Rain" modifier
# @context root
# @within abchc:modifiers/directory
# @input
#   score anvil_rain.keep abch.config
#       Config for whether anvils should
#       leave anvils on the ground or not
#   score anvil_rain.chance abch.config
#       How many times to spawn anvils
# @output
#   score anvil_rain.loop
#       How many loops left based on anvil_rain.chance

#> Remove anvils when they land unless disabled
execute as @e[ name="abch.anvil_rain.marker" ] at @s unless score anvil_rain.keep abch.config matches 1 run function abchc:modifiers/anvil_rain/mark_destroy

#> Loop
# Set loop (which decrements until 0) to chance enum in config
scoreboard players operation anvil_rain.loop abch.config = anvil_rain.chance abch.config
scoreboard players set anvil_rain.loop abch.config 1

# Start the loop
function abchc:modifiers/anvil_rain/loop