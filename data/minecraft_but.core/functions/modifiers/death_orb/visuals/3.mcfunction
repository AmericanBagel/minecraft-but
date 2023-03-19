#> minecraft_but.core:modifiers/death_orb/visuals/3
# Particles if player is within ..3 blocks
# @context orb
# @within minecraft_but.core:modifiers/visuals/directory

#> Particles

# Reddish purple particles which fade to a reddish purple black
execute at @s run particle minecraft:dust_color_transition 1 0 1 4 0.1 0 0.2 ~ ~ ~ 0.35 0.35 0.35 0.01 5 force

# Blueish purple particles which fade to a reddish blue black
execute at @s run particle minecraft:dust_color_transition .5 0 1 4 0.05 0 0.25 ~ ~ ~ 0.35 0.35 0.35 0.01 5 force

# Spawn portal particles *in front* of the orb so the particles don't collapse in too far behind the orb
execute at @s facing entity @p[ tag=minecraft_but.death_orb.this] eyes run particle portal ^ ^ ^1 0 0 0 1 35 force

execute at @s facing entity @p[ tag=minecraft_but.death_orb.this] eyes run particle reverse_portal ^ ^ ^ 0 0 0 .35 35 force