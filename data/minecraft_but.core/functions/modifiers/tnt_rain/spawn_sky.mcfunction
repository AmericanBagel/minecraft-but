#> minecraft_but.core:modifiers/tnt_rain/spawn_sky
# Spawn tnts from the sky
# @context player
# @within minecraft_but.core:modifiers/tnt_rain/loop

# Summon marker
summon marker ~ ~ ~ {CustomName: '{"text":"minecraft_but.tnt_rain.spawner"}', Tags: [ "global.ignore", "marker", "minecraft_but.marker", "minecraft_but.tnt_rain" ]}

# Randomly teleport the marker around
spreadplayers ~ ~ 0 25 false @e[ type=marker, name="minecraft_but.tnt_rain.spawner" ]

# Run tnt spawning function
execute as @e[ type=marker, name="minecraft_but.tnt_rain.spawner" ] at @s positioned ~ 319 ~ run function minecraft_but.core:modifiers/tnt_rain/rain

# Kill marker
kill @e[ type=marker, name="minecraft_but.tnt_rain.spawner" ]