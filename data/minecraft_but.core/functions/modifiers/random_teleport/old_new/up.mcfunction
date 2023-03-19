#> minecraft_but.coreraft_but.core:modifiers/random_teleport/tp/up
# Recursively search up until limit is hit or ground is found.
# @within minecraft_but.coreraft_but.core:modifiers/random_teleport/tp/start_down
# @context player at offset

# Decrement limit
scoreboard players remove $limit minecraft_but.random_teleport 1
# Distance down for comparing distances between down and up in the future
scoreboard players add $up_distance minecraft_but.random_teleport 1

# Check if solid ground has been found
execute if block ~ ~-1 ~ #aestd1:all_but_air if block ~ ~ ~ #aestd1:air if block ~ ~1 ~ #aestd1:air run scoreboard players set $up_grounded minecraft_but.random_teleport 1

# If limit hasn't been reached and solid ground has not been found, run this function again but positioned down
execute if score $limit minecraft_but.random_teleport matches 1.. unless score $up_grounded minecraft_but.random_teleport matches 1.. positioned ~ minecraft_but.corerun function minecraft_but.core:modifiers/random_teleport/tp/down

# If solid ground was found, summon "up" marker to preserve its location
execute if score $up_grounded minecraft_but.random_teleport matches 1.. run summon marker ~ ~ ~ {Tags:["minecraft_but","minecraft_but.random_teleport","minecraft_but.random_teleport.up"]}
# If solid ground was found, compare distances between down and up.
execute if score $up_grounded minecraft_but.random_teleport matches 1.. run minecraft_but.coreion minecraft_but.core:modifiers/random_teleport/tp/compare

# If solid ground wasn't found, reset position and search up
execute if score $limit minecraft_but.random_teleport matches ..0 run minecraft_but.coreion minecraft_but.core:modifiers/random_teleport/tp/compare