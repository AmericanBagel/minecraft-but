# Summon marker
summon marker ~ ~ ~ {CustomName: '{"text":"abch.anvil_rain.spawner"}', Tags: [ "global.ignore", "marker", "abch.marker" ]}

# Copy Y position from player to marker
#data modify entity @e[type=marker,name="abch.anvil_rain.spawner",tag=abch.marker,limit=1] Pos[1] set from entity @s Pos[1]

## Y pos storing
# Copy Y position from player to marker's score
execute store result score @e[ type=marker, name="abch.anvil_rain.spawner" ] abch.anvil_rain.Y run data get entity @s Pos[1]

### TEMP
execute as @e[ type=marker, name="abch.anvil_rain.spawner" ] store result entity @s abch.anvil_rain.Yoffset int 1 run loot spawn ~ ~-1000 ~ loot abchc:1r15
scoreboard players set @e[ type=marker, name="abch.anvil_rain.spawner" ] abch.anvil_rain.Yoffset 15
###

# Add marker's Y offset score to marker's Y score so it spawns above player
scoreboard players operation @e[ type=marker, name="abch.anvil_rain.spawner" ] abch.anvil_rain.Y += @e[ type=marker, name="abch.anvil_rain.spawner" ] abch.anvil_rain.Yoffset

# Randomly teleport the marker around
spreadplayers ~ ~ 0 25 false @e[ type=marker, name="abch.anvil_rain.spawner" ]

# Apply Y position to keep marker's Y position
execute as @e[ type=marker, name="abch.anvil_rain.spawner" ] store result entity @s Pos[1] double 1 run scoreboard players get @s abch.anvil_rain.Y

# Get random number between 1 and 60
execute store result score @e[ type=marker, name="abch.anvil_rain.spawner" ] abch.anvil_rain.random run loot spawn ~ ~-1000 ~ loot abchc:1r60

# Run anvil spawning function
execute as @e[ type=marker, name="abch.anvil_rain.spawner" ] at @s run function abchc:modifiers/anvil_rain/rain

# Anvil particles
execute as @e[ type=marker, name="abch.anvil_rain.spawner" ] at @s run particle minecraft:smoke ~ ~ ~ 0.1 0.1 0.1 0.2 15 normal
execute as @e[ type=marker, name="abch.anvil_rain.spawner" ] at @s run particle minecraft:block minecraft:anvil ~ ~ ~ 0.1 0.1 0.1 0.2 15 normal

# Kill marker
kill @e[ type=marker, name="abch.anvil_rain.spawner" ]