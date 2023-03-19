#> abchc:modifiers/ender_blood/tp/start_down
#
# Start marching down to find solid ground below
#
# @within abchc:modifiers/ender_blood/start_search
# @context as player at marker

# Set block traversal limit to 100 steps (50 blocks at 0.5 blocks/step)
scoreboard players set $limit abch.ender_blood 100

# Start searching down
function abchc:modifiers/ender_blood/tp/down