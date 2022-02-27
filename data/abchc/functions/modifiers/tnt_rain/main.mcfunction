# Remove anvils when they land unless disabled
execute if score tnt_rain.grief abch.config matches 1.. run kill @e[ type=tnt, tag=abch.tnt_rain.tnt, nbt={Fuse: 1s} ]

## Loop
# Set loop (which decrements until 0) to chance enum in config
scoreboard players operation tnt_rain.loop abch.config = tnt.chance abch.config
# Start the loop
function abchc:modifiers/tnt_rain/loop