#> abchc:modifiers/random_teleport/tp/start_down
#
# Start marching down to find solid ground below
#
# @within abchc:modifiers/random_teleport/start_search
# @context as player at marker

# Set block traversal limit to 100 steps (50 blocks at 0.5 blocks/step)
scoreboard players set $limit abch.random_teleport 100

# Start searching down
function abchc:modifiers/random_teleport/tp/down