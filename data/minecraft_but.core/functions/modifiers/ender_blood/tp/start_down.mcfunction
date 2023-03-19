#> minecraft_but.coreraft_but.core:modifiers/ender_blood/tp/start_down
#
# Start marching down to find solid ground below
#
# @within minecraft_but.coreraft_but.core:modifiers/ender_blood/start_search
# @context as player at marker

# Set block traversal limit to 100 steps (50 blocks at 0.5 blocks/step)
scoreboard players set $limit minecraft_but.ender_blood 100

# Start searching down
function minecraft_but.coreraft_but.core:modifiers/ender_blood/tp/down