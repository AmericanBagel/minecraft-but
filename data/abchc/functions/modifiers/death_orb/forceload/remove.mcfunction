#> abchc:modifiers/death_orb/forceload/remove
# Remove unused forceloaded chunks which the death orb isn't in anymore
# @context forceload marker
# @within abchc:modifiers/death_orb/forceload/directory

# executed as our "marker" anywhere in the chunk
# "abch.death_orb" is a dummy objective

tag @s remove global.forceload

# Constant chunk width
scoreboard players set #16 abch.death_orb 16

# Align marker to X chunk border
execute store result score #pos abch.death_orb run data get entity @s Pos[0]
scoreboard players operation #pos abch.death_orb /= #16 abch.death_orb
execute store result entity @s Pos[0] double 16 run scoreboard players get #pos abch.death_orb

# Align marker to Z chunk border
execute store result score #pos abch.death_orb run data get entity @s Pos[2]
scoreboard players operation #pos abch.death_orb /= #16 abch.death_orb
execute store result entity @s Pos[2] double 16 run scoreboard players get #pos abch.death_orb

# Align marker to lowest Y block
data modify entity @s Pos[1] set value -64.0d

# Check region
execute at @s unless entity @e[tag=global.forceload,dx=15,dy=319,dz=15] unless entity @e[name="abch.death_orb.marker",dx=15,dy=319,dz=15] run forceload remove ~ ~
execute at @s unless entity @e[tag=global.forceload,dx=15,dy=319,dz=15] unless entity @e[name="abch.death_orb.marker",dx=15,dy=319,dz=15] run kill @s

tag @s add global.forceload