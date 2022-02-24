# Summon marker
summon marker ~ ~ ~ {CustomName:'{"text":"abch.anvil_rain.spawner"}',Tags:["global.ignore","marker","abch.marker"]}

# Randomly teleport the marker around
spreadplayers ~ ~ 0 25 false @e[type=marker,name="abch.anvil_rain.spawner"]

# Get random number between 1 and 60
execute store result score @e[type=marker,name="abch.anvil_rain.spawner"] abch.anvil_rain.random run loot spawn ~ ~-1000 ~ loot abchc:1r60

# Run anvil spawning function
execute as @e[type=marker,name="abch.anvil_rain.spawner"] at @s positioned ~ 255 ~ run function abchc:modifiers/anvil_rain/rain

# Kill marker
kill @e[type=marker,name="abch.anvil_rain.spawner"]