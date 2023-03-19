#> abchc:modifiers/anvil_rain/spawn_sky
# Spawn anvils from the sky
# @context player
# @within abchc:modifiers/anvil_rain/loop

# Summon marker
summon marker ~ ~ ~ {CustomName: '{"text":"abch.anvil_rain.spawner"}', Tags: [ "global.ignore", "marker", "abch.marker", "abch.anvil_rain" ]}

# Randomly teleport the marker around
spreadplayers ~ ~ 0 25 false @e[ type=marker, name="abch.anvil_rain.spawner" ]

# Run anvil spawning function
execute as @e[ type=marker, name="abch.anvil_rain.spawner" ] at @s positioned ~ 319 ~ run function abchc:modifiers/anvil_rain/rain

# Kill marker
kill @e[ type=marker, name="abch.anvil_rain.spawner" ]