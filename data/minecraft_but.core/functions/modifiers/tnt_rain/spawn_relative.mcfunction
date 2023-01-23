#> minecraft_but.core:modifiers/tnt_rain/spawn_relative
# 
# Spawn tnts above player
#
# @context tnt marker
# @within minecraft_but.core:modifiers/tnt_rain/relative
# @output
#   score #y minecraft_but.tnt_rain
#       Y pos of tnt spawner to preserve
#       Y pos after spreadplayers
#   score $out random
#       Output of LCG, random number 

## Y pos storing
# Copy Y position from player to marker's score
#execute store result score #y minecraft_but.tnt_rain run data get entity @s Pos[1]
#tellraw @a {"score":{"name": "#y","objective": "minecraft_but.tnt_rain"}}

#> Get Y offset
#function minecraft_but.core:modifiers/tnt_rain/get_offset

# Add marker's Y offset score to marker's Y score so it spawns above player
#scoreboard players operation #y minecraft_but.tnt_rain += $out random
#spreadplayers ~ ~ 0 25 false @s
#spreadplayers ~ ~ 0 25 false @s
#
## Apply Y position to keep marker's Y position
## because spreadplayers grounds it
#execute store result entity @s Pos[1] double 1 run scoreboard players get #y minecraft_but.tnt_rain
#
## Run tnt spawning function
#execute positioned ~ ~10 ~ run function minecraft_but.core:modifiers/tnt_rain/rain
#
## tnt particles
#particle minecraft:smoke ~ ~ ~ 0.1 0.1 0.1 0.2 15 normal
#particle minecraft:block minecraft:tnt ~ ~ ~ 0.1 0.1 0.1 0.2 15 normal
#
## Kill marker
#kill @s

## Y pos storing
# Copy Y position from player to marker's score
execute store result score #y minecraft_but.tnt_rain run data get entity @s Pos[1]
#tellraw @a {"score":{"name": "#y","objective": "minecraft_but.tnt_rain"}}

#> Get Y offset
function minecraft_but.core:modifiers/tnt_rain/get_offset

# Add marker's Y offset score to marker's Y score so it spawns above player
scoreboard players operation #y minecraft_but.tnt_rain += $out random

# Randomly teleport the marker around
spreadplayers ~ ~ 0 25 false @s

# Apply Y position to keep marker's Y position
# because spreadplayers grounds it
#execute store result entity @s Pos[1] doubl
execute store result entity @s Pos[1] double 1 run scoreboard players get #y minecraft_but.tnt_rain

#> Particles
execute at @s run particle large_smoke ~ ~ ~ 0.25 0.25 0.25 0.025 3 force

# Run tnt spawning function
execute at @s run function minecraft_but.core:modifiers/tnt_rain/rain

# Kill marker
kill @s