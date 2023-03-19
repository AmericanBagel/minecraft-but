#> minecraft_but.coreraft_but.core:modifiers/anvil_rain/spawn_relative
# 
# Spawn anvils above player
#
# @context anvil marker
# @within minecraft_but.coreraft_but.core:modifiers/anvil_rain/relative
# @output
#   score #y minecraft_but.anvil_rain
#       Y pos of anvil spawner to preserve
#       Y pos after spreadplayers
#   score $out random
#       Output of LCG, random number 

## Y pos storing
# Copy Y position from player to marker's score
#execute store result score #y minecraft_but.anvil_rain run data get entity @s Pos[1]
#tellraw @a {"score":{"name": "#y","objective": "minecraft_but.anvil_rain"}}

#> Get Y offset
#function minecraft_but.coreraft_but.core:modifiers/anvil_rain/get_offset

# Add marker's Y offset score to marker's Y score so it spawns above player
#scoreboard players operation #y minecraft_but.anvil_rain += $out random
#spreadplayers ~ ~ 0 25 false @s
#spreadplayers ~ ~ 0 25 false @s
#
## Apply Y position to keep marker's Y position
## because spreadplayers grounds it
#execute store result entity @s Pos[1] double 1 run scoreboard players get #y minecraft_but.anvil_rain
#
## Run anvil spawning function
#execute positioned ~ ~10 ~ run function minecraft_but.coreraft_but.core:modifiers/anvil_rain/rain
#
## Anvil particles
#particle minecraft:smoke ~ ~ ~ 0.1 0.1 0.1 0.2 15 normal
#particle minecraft:block minecraft:anvil ~ ~ ~ 0.1 0.1 0.1 0.2 15 normal
#
## Kill marker
#kill @s

## Y pos storing
# Copy Y position from player to marker's score
execute store result score #y minecraft_but.anvil_rain run data get entity @s Pos[1]
#tellraw @a {"score":{"name": "#y","objective": "minecraft_but.anvil_rain"}}

#> Get Y offset
function minecraft_but.coreraft_but.core:modifiers/anvil_rain/get_offset

# Add marker's Y offset score to marker's Y score so it spawns above player
scoreboard players operation #y minecraft_but.anvil_rain += $out random

# Randomly teleport the marker around
spreadplayers ~ ~ 0 25 false @s

# Apply Y position to keep marker's Y position
# because spreadplayers grounds it
#execute store result entity @s Pos[1] doubl
execute store result entity @s Pos[1] double 1 run scoreboard players get #y minecraft_but.anvil_rain

#> Particles
execute at @s run particle large_smoke ~ ~ ~ 0.25 0.25 0.25 0.025 3 force

# Run anvil spawning function
execute at @s run function minecraft_but.coreraft_but.core:modifiers/anvil_rain/rain

# Kill marker
kill @s