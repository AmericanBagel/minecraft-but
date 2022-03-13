#> abchc:modifiers/death_orb/visuals/5
# Particles if player is within 4..5 blocks
# @context orb
# @within abchc:modifiers/visuals/directory

#> Particles

# Reddish purple particles which fade to a reddish purple black
execute at @s run particle minecraft:dust_color_transition 0.722 0.004 0.663 3 0.4 0 0.333 ~ ~ ~ 0.25 0.25 0.25 0.01 5 force

# Blueish purple particles which fade to a reddish blue black
execute at @s run particle minecraft:dust_color_transition 0.557 0 0.812 3 0.388 0 0.541 ~ ~ ~ 0.25 0.25 0.25 0.01 5 force

# Spawn portal particles *in front* of the orb so the particles don't collapse in too far behind the orb
execute at @s facing entity @p[ tag=abch.death_orb.this] eyes run particle portal ^ ^ ^1 0 0 0 1 20 force

execute at @s facing entity @p[ tag=abch.death_orb.this] eyes run particle reverse_portal ^ ^ ^ 0 0 0 .25 20 force