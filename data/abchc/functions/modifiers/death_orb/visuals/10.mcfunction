#> abchc:modifiers/death_orb/visuals/10
# Particles if player is within 6..10 blocks
# @context orb
# @within abchc:modifiers/visuals/directory

#> Particles

# Reddish purple particles which fade to a reddish purple black
execute at @s run particle minecraft:dust_color_transition 0.631 0 0.58 2.5 0.361 0 0.298 ~ ~ ~ 0.2 0.2 0.2 0.01 5 force

# Blueish purple particles which fade to a reddish blue black
execute at @s run particle minecraft:dust_color_transition 0.443 0.169 0.573 2.5 0.341 0.145 0.42 ~ ~ ~ 0.2 0.2 0.2 0.01 5 force

# Spawn portal particles *in front* of the orb so the particles don't collapse in too far behind the orb
execute at @s facing entity @p[ tag=abch.death_orb.this] eyes run particle portal ^ ^ ^1 0 0 0 1 5 force

execute at @s facing entity @p[ tag=abch.death_orb.this] eyes run particle reverse_portal ^ ^ ^ 0 0 0 .1 5 force