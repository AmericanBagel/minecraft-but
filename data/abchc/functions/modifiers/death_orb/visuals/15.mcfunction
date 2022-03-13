#> abchc:modifiers/death_orb/visuals/15
# Particles if player is within 11..15 blocks
# @context orb
# @within abchc:modifiers/visuals/directory

#> Particles

# Reddish purple particles which fade to a reddish purple black
execute at @s run particle minecraft:dust_color_transition 0.522 0.075 0.522 2.25 0.259 0.043 0.224 ~ ~ ~ 0.15 0.15 0.15 0.01 5 force

# Blueish purple particles which fade to a reddish blue black
execute at @s run particle minecraft:dust_color_transition 0.333 0.192 0.4 2.25 0.239 0.11 0.275 ~ ~ ~ 0.15 0.15 0.15 0.01 5 force

# Spawn portal particles *in front* of the orb so the particles don't collapse in too far behind the orb
execute at @s facing entity @p[ tag=abch.death_orb.this] eyes run particle portal ^ ^ ^1 0 0 0 1 3 force