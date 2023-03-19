# Increment score
scoreboard players remove @s minecraft_but.2020_mode.recurs 1

# Particles
particle crit ~ ~ ~ 0 0 0 0 1 force

# If the loop hasn't ended, continue
execute unless score @s minecraft_but.2020_mode.recurs matches 0 positioned ^ ^ ^2 rotated ~25 ~ run minecraft_but.coreion minecraft_but.core:modifiers/2020_mode/particles/recurs


# bubble
# crit