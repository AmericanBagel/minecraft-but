#> abchc:modifiers/random_teleport/tp/tp
# If it was solid ground from the start, tp player

# TP to down marker
say @s
tp @s ~ ~ ~

# Play TP sound effect
playsound entity.enderman.teleport master @s ~ ~ ~ 1 1

# Clean up everything
function abchc:modifiers/random_teleport/tp/clean_up