#> minecraft_but.coreraft_but.core:modifiers/random_teleport/tp/down
# Recursively search down until limit is reached or solid ground is found
# @within minecraft_but.coreraft_but.core:modifiers/random_teleport/tp/start_down
# @context player at offset

# Decrement limit
scoreboard players remove $limit minecraft_but.random_teleport 1
# Distance down for comparing distances between down and up in the future
scoreboard players add $down_distance minecraft_but.random_teleport 1

# Check if solid ground has been found
execute if block ~ ~-1 ~ #aestd1:all_but_air if block ~ ~ ~ #aestd1:air if block ~ ~1 ~ #aestd1:air run scoreboard players set $down_grounded minecraft_but.random_teleport 1

# If limit hasn't been reached and solid ground has not been found, run this function again but positioned down
execute if score $limit minecraft_but.random_teleport matches 1.. unless score $down_grounded minecraft_but.random_teleport matches 1.. positioned ~ ~minecraft_but.corerun function minecraft_but.core:modifiers/random_teleport/tp/down

# If solid ground has been found, try restarting but look up. This is because the teleporting
# should not be biased toward teleporting down. This would make players always go down into caves!
# Instead, we should compare the distances between solid ground below and solid ground above
# and teleport player to the closest one.

# If solid ground was found, summon marker down in case we want to TP to it after comparing
execute if score $down_grounded minecraft_but.random_teleport matches 1.. run summon marker ~ ~ ~ {Tags:["minecraft_but","minecraft_but.random_teleport","minecraft_but.random_teleport.down"]}

# Start searching up to compare
execute if score $down_grounded minecraft_but.random_teleport matches 1.. run minecraft_but.coreion minecraft_but.core:modifiers/random_teleport/tp/start_up

# If solid ground wasn't found, reset position and search up
execute if score $limit minecraft_but.random_teleport matches ..0 run minecraft_but.coreion minecraft_but.core:modifiers/random_teleport/tp/start_up