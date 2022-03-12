#> abchc:modifiers/death_orb/forceload/remove
# Function for removing forceload
# in compliance with MC Datapacks Convention
# (see https://mc-datapacks.github.io/en/conventions/global_forceload_tag.html)
# @within abchc:modifiers/death_orb/forceload/remove_init
# @context forceload remove marker
# @output
#   score #f.16 abch.death_orb
#       Enum for 16 to divide for aligning
#   score #f.pos abch.death_orb
#       Holder for position to align

tag @s remove global.ignore

# Constant chunk width
scoreboard players set #f.16 abch.death_orb 16

# Align marker to X chunk border
execute store result score #f.pos abch.death_orb run data get entity @s Pos[0]
scoreboard players operation #f.pos abch.death_orb /= #f.16 abch.death_orb
execute store result entity @s Pos[0] double 16 run scoreboard players get #f.pos abch.death_orb

# Align marker to Z chunk border
execute store result score #f.pos abch.death_orb run data get entity @s Pos[2]
scoreboard players operation #f.pos abch.death_orb /= #f.16 abch.death_orb
execute store result entity @s Pos[2] double 16 run scoreboard players get #f.pos abch.death_orb

# Align marker to lowest Y block
data modify entity @s Pos[1] set value -64.0d

# Check region
#execute at @s if entity @e[tag=global.forceload,dx=15,dy=319,dz=15] run tag @s add keep
execute at @s positioned ~-1 ~ ~-1 if entity @e[tag=abch.death_orb.marker,dx=15,dy=319,dz=15] run tag @s add keep

particle crit ~ ~ ~ 0 0 0 1 1 normal

execute at @s unless entity @s[tag=keep] run forceload remove ~ ~
execute at @s unless entity @s[tag=keep] run kill @s