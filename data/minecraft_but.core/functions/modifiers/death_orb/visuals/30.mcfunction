#> minecraft_but.core:modifiers/death_orb/visuals/30
# Particles if player is within 21..30 blocks
# @context orb
# @within minecraft_but.core:modifiers/visuals/directory

#> Particles

# Reddish purple particles which fade to a reddish purple black
execute at @s run particle minecraft:dust_color_transition 0.345 0.09 0.345 1.5 0.122 0.039 0.106 ~ ~ ~ 0.15 0.15 0.15 0.01 5 force

# Blueish purple particles which fade to a reddish blue black
execute at @s run particle minecraft:dust_color_transition 0.208 0.137 0.239 1.5 0.118 0.071 0.133 ~ ~ ~ 0.15 0.15 0.15 0.01 5 force

# Spawn portal particles *in front* of the orb so the particles don't collapse in too far behind the orb
execute at @s facing entity @p[ tag=minecraft_but.death_orb.this] eyes run particle portal ^ ^ ^1 0 0 0 1 3 force