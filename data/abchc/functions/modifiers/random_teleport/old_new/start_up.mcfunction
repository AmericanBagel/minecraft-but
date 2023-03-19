#> abchc:modifiers/random_teleport/tp/start_up
#
# Start marching down to find solid ground above
#
# This function could either be called because
# no solid ground was found and solid ground needs
# to be searched for above or because
# solid ground was found below but above is being tried
# to find the closest distance.
#
# @within abchc:modifiers/random_teleport/start_search
# @context as player at marker


# Set block traversal limit to 100 steps (50 blocks at 0.5 blocks/step)
scoreboard players set $limit abch.random_teleport 100

# Start searching down
# (Reset position back to marker's position with `at @e`)
execute at @e[tag=abch.random_teleport.marker] run function abchc:modifiers/random_teleport/tp/up