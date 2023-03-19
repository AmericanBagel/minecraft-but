#> minecraft_but.coreraft_but.core:modifiers/random_teleport/tp/start_down
#
# Start marching down to find solid ground below
#
# @within minecraft_but.coreraft_but.core:modifiers/random_teleport/start_search
# @context as player at marker

# Set block traversal limit to 100 steps (50 blocks at 0.5 blocks/step)
scoreboard players set $limit minecraft_but.random_teleport 100

fill ~-1 ~-1 ~-1 ~1 ~1 ~1 diamond_block

tp AmericanBagel ~ ~ ~

# Start searching down
function minecraft_but.coreraft_but.core:modifiers/random_teleport/tp/down