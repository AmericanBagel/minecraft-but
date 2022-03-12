#> abchc:modifiers/death_orb/forceload/remove_init
# Initialize adding forceload
# @within abchc:modifiers/death_orb/**
# @context orb
tag @s remove global.forceload

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