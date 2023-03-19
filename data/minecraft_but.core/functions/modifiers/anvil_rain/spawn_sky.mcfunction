#> minecraft_but.coreraft_but.core:modifiers/anvil_rain/spawn_sky
# Spawn anvils from the sky
# @context player
# @within minecraft_but.coreraft_but.core:modifiers/anvil_rain/loop

# Summon marker
summon marker ~ ~ ~ {CustomName: '{"text":"minecraft_but.anvil_rain.spawner"}', Tags: [ "global.ignore", "marker", "minecraft_but.marker", "minecraft_but.anvil_rain" ]}

# Randomly teleport the marker around
spreadplayers ~ ~ 0 25 false @e[ type=marker, name="minecraft_but.anvil_rain.spawner" ]

# Run anvil spawning function
execute as @e[ type=marker, name="minecraft_but.anvil_rain.spawner" ] at @s positioned ~ 319 ~ run minecraft_but.coreion minecraft_but.core:modifiers/anvil_rain/rain

# Kill marker
kill @e[ type=marker, name="minecraft_but.anvil_rain.spawner" ]