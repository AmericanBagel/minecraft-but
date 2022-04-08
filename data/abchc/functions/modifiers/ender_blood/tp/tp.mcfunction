#> abchc:modifiers/ender_blood/tp/tp
# If it was solid ground from the start, tp player

# Particles
particle reverse_portal ~ ~.5 ~ 0 0.25 0 1 30 normal

# TP sound effect
particle reverse_portal ~ ~.5 ~ 0 0.25 0 1 30 normal

# TP to down marker
tp @s ~ ~ ~

# Particles at destination
execute at @s run particle portal ~ ~.5 ~ 0 0.25 0 1 30 normal

# Play TP sound effect at destination
execute at @s run playsound entity.enderman.teleport master @s ~ ~ ~ 1 1

# Clean up everything
function abchc:modifiers/ender_blood/tp/clean_up