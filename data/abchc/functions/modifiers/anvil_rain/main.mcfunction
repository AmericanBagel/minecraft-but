# Remove anvils when they land unless disabled
execute as @e[ name="abch.anvil_rain.marker" ] at @s unless score anvil_rain.keep abch.config matches 1 run function abchc:modifiers/anvil_rain/mark_destroy

## Loop
# Set loop (which decrements until 0) to chance enum in config
scoreboard players operation anvil_rain.loop abch.config = anvil_rain.chance abch.config
# Start the loop
function abchc:modifiers/anvil_rain/loop