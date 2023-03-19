#> minecraft_but.coreraft_but.core:modifiers/death_orb/visuals/50
# Particles if player is within 31..50 blocks
# @context orb
# @within minecraft_but.coreraft_but.core:modifiers/visuals/directory

#> Particles
# Reddish purple particles which fade to a reddish purple black
execute at @s run particle minecraft:dust_color_transition 0.227 0.075 0.227 1.25 0 0 0 ~ ~ ~ 0.15 0.15 0.15 0.01 5 force

# Blueish purple particles which fade to a reddish blue black
execute at @s run particle minecraft:dust_color_transition 0.141 0.098 0.161 1.25 0 0 0 ~ ~ ~ 0.15 0.15 0.15 0.01 5 force

# Spawn portal particles *in front* of the orb so the particles don't collapse in too far behind the orb
execute at @s facing entity @p[ tag=minecraft_but.death_orb.this] eyes run particle portal ^ ^ ^1 0 0 0 1 3 force