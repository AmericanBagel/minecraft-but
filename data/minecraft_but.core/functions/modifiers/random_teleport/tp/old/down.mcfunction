#> minecraft_but.coreraft_but.core:modifiers/random_teleport/tp/down
# Recursively search down until limit is reached or solid ground is found
# @within minecraft_but.coreraft_but.core:modifiers/random_teleport/tp/start_down
# @context player at offset

# Decrement limit
scoreboard players remove $limit minecraft_but.random_teleport 1

# If it's not solid ground and the limit hasn't been reached, keep searching.
execute if score $limit minecraft_but.random_teleport matches 1.. if block ~ ~-1 ~ #aestd1:air positioned ~ ~-1 ~ run minecraft_but.coreion minecraft_but.core:modifiers/random_teleport/tp/down

# If block below is not air and blocks at player's feet and head are air, TP! Solid ground found!
execute unless block ~ ~-1 ~ #aestd1:air if block ~ ~-1 ~ #aestd1:air if block ~ ~-1 ~ #aestd1:air run function minecraft_but.coreraft_but.core:modifiers/random_teleport/tp/tp

# If solid ground wasn't found, reset position and search up
execute if score $limit minecraft_but.random_teleport matches ..0 run minecraft_but.coreion minecraft_but.core:modifiers/random_teleport/tp/up_from_down