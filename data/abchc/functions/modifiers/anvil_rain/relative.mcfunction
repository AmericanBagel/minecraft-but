#> abchc:modifiers/anvil_rain/relative
# Spawn anvil spawning marker and spawn anvils
# @context player
# @within abchc:modifiers/anvil_rain/loop

#> Summon marker
summon marker ~ ~ ~ {CustomName: '{"text":"abch.anvil_rain.spawner"}', Tags: [ "global.ignore", "marker", "abch.marker", "abch.anvil_rain" ]}

#> Spawn anvils as marker
execute as @e[type=marker,name="abch.anvil_rain.spawner"] at @s run function abchc:modifiers/anvil_rain/spawn_relative