# Summon marker
summon marker ~ ~ ~ {CustomName: '{"text":"abch.anvil_rain.spawner"}', Tags: [ "global.ignore", "marker", "abch.marker" ]}

# Randomly teleport the marker around
spreadplayers ~ ~ 0 25 false @e[ type=marker, name="abch.anvil_rain.spawner" ]

# Get random number between 1 and 60
scoreboard players set in abch.rng.math 1
scoreboard players set in60 abch.rng.math 1
function abchc:apis/rng/range
scoreboard players operation @e[ type=marker, name="abch.anvil_rain.spawner" ] abch.anvil_rain.random = out abch.rng.math

# Run anvil spawning function
execute as @e[ type=marker, name="abch.anvil_rain.spawner" ] at @s positioned ~ 255 ~ run function abchc:modifiers/anvil_rain/rain

# Kill marker
kill @e[ type=marker, name="abch.anvil_rain.spawner" ]