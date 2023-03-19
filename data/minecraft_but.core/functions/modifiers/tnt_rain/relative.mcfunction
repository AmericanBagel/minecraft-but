#> minecraft_but.core:modifiers/tnt_rain/relative
# Spawn tnt spawning marker and spawn tnts
# @context player
# @within minecraft_but.core:modifiers/tnt_rain/loop

#> Summon marker
summon marker ~ ~ ~ {CustomName: '{"text":"minecraft_but.tnt_rain.spawner"}', Tags: [ "global.ignore", "marker", "minecraft_but.marker", "minecraft_but.tnt_rain" ]}

#> Spawn tnts as marker
execute as @e[type=marker,name="minecraft_but.tnt_rain.spawner"] at @s run function minecraft_but.core:modifiers/tnt_rain/spawn_relative