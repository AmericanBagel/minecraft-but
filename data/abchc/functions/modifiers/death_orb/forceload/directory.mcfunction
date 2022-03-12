#> abchc:modifiers/death_orb/forceload/directory
# Function for managing forceloading of death orb so it doesn't get unloaded
# while obeying MC Datapacks Conventions
# (see https://mc-datapacks.github.io/en/conventions/global_forceload_tag.html)
# @within abchc:modifiers/death_orb/**
# @context orb

# executed as our "marker" anywhere in the chunk
# "math" is a dummy objective

tag @s remove global.ignore

# Constant chunk width
scoreboard players set #16 math 16

# Align marker to X chunk border
execute store result score #pos math run data get entity @s Pos[0]
scoreboard players operation #pos math /= #16 math
execute store result entity @s Pos[0] double 16 run scoreboard players get #pos math

# Align marker to Z chunk border
execute store result score #pos math run data get entity @s Pos[2]
scoreboard players operation #pos math /= #16 math
execute store result entity @s Pos[2] double 16 run scoreboard players get #pos math

# Align marker to lowest Y block
data modify entity @s Pos[1] set value -64.0d

# Check region
execute at @s unless entity @e[tag=global.forceload,dx=15,dy=319,dz=15] run forceload remove ~ ~

kill @s