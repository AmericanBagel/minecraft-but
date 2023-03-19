#> abchc:modifiers/tnt_rain/spawn_sky
# Spawn tnts from the sky
# @context player
# @within abchc:modifiers/tnt_rain/loop

# Summon marker
summon marker ~ ~ ~ {CustomName: '{"text":"abch.tnt_rain.spawner"}', Tags: [ "global.ignore", "marker", "abch.marker", "abch.tnt_rain" ]}

# Randomly teleport the marker around
spreadplayers ~ ~ 0 25 false @e[ type=marker, name="abch.tnt_rain.spawner" ]

# Run tnt spawning function
execute as @e[ type=marker, name="abch.tnt_rain.spawner" ] at @s positioned ~ 319 ~ run function abchc:modifiers/tnt_rain/rain

# Kill marker
kill @e[ type=marker, name="abch.tnt_rain.spawner" ]