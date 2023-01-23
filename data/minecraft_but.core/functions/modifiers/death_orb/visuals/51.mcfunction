#> minecraft_but.core:modifiers/death_orb/visuals/51
# Particles if player is within 51.. blocks
# @context orb
# @within minecraft_but.core:modifiers/visuals/directory

#> Particles
# Reddish purple particles which fade to a reddish purple black
execute at @s run particle minecraft:dust_color_transition 0 0 0 1 0 0 0 ~ ~ ~ 0.15 0.15 0.15 0.01 5 force

# Blueish purple particles which fade to a reddish blue black
execute at @s run particle minecraft:dust_color_transition 0 0 0 1 0 0 0 ~ ~ ~ 0.15 0.15 0.15 0.01 5 force

# Spawn portal particles *in front* of the orb so the particles don't collapse in too far behind the orb
execute at @s facing entity @p[ tag=minecraft_but.death_orb.this] eyes run particle portal ^ ^ ^1 0 0 0 1 3 force