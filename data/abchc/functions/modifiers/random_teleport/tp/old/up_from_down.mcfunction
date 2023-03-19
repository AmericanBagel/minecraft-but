#> abchc:modifiers/random_teleport/tp/up_from_down
# If searching down didn't work, try searching up.
# @within abchc:modifiers/random_teleport/tp/**
# @context player

# Set position back to marker to try up
scoreboard players set $up abch.random_teleport 1
execute at @e[tag=abch.random_teleport.marker] run function abchc:modifiers/random_teleport/tp/start_up