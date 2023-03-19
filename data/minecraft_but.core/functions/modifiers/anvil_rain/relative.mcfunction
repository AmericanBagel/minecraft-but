#> minecraft_but.coreraft_but.core:modifiers/anvil_rain/relative
# Spawn anvil spawning marker and spawn anvils
# @context player
# @within minecraft_but.coreraft_but.core:modifiers/anvil_rain/loop

#> Summon marker
summon marker ~ ~ ~ {CustomName: '{"text":"minecraft_but.anvil_rain.spawner"}', Tags: [ "global.ignore", "marker", "minecraft_but.marker", "minecraft_but.anvil_rain" ]}

#> Spawn anvils as marker
execute as @e[type=marker,name="minecraft_but.anvil_rain.spawner"] at @s run minecraft_but.coreion minecraft_but.core:modifiers/anvil_rain/spawn_relative