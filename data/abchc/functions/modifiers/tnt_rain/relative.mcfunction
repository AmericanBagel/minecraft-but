#> abchc:modifiers/tnt_rain/relative
# Spawn tnt spawning marker and spawn tnts
# @context player
# @within abchc:modifiers/tnt_rain/loop

#> Summon marker
summon marker ~ ~ ~ {CustomName: '{"text":"abch.tnt_rain.spawner"}', Tags: [ "global.ignore", "marker", "abch.marker", "abch.tnt_rain" ]}

#> Spawn tnts as marker
execute as @e[type=marker,name="abch.tnt_rain.spawner"] at @s run function abchc:modifiers/tnt_rain/spawn_relative