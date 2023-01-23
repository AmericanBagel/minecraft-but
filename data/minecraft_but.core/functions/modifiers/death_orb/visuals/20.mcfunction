#> minecraft_but.core:modifiers/death_orb/visuals/20
# Particles if player is within 16..20 blocks
# @context orb
# @within minecraft_but.core:modifiers/visuals/directory

#> Particles
# Reddish purple particles which fade to a reddish purple black
execute at @s run particle minecraft:dust_color_transition 0.427 0.09 0.427 2 0.192 0.051 0.169 ~ ~ ~ 0.15 0.15 0.15 0.01 5 force

# Blueish purple particles which fade to a reddish blue black
execute at @s run particle minecraft:dust_color_transition 0.278 0.169 0.325 2 0.169 0.082 0.192 ~ ~ ~ 0.15 0.15 0.15 0.01 5 force

# Spawn portal particles *in front* of the orb so the particles don't collapse in too far behind the orb
execute at @s facing entity @p[ tag=minecraft_but.death_orb.this] eyes run particle portal ^ ^ ^1 0 0 0 1 3 force