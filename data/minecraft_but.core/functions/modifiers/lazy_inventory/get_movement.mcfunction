#> minecraft_but.core:modifiers/lazy_inventory/get_movement
# Get movement since last tick
# @within minecraft_but.core:modifiers/lazy_inventory/main
# @context player

#> Get current position by a factor of 1000 for precision
execute store result score #temp minecraft_but.lazy_inventory.x run data get entity @s Pos[0] 10
execute store result score #temp minecraft_but.lazy_inventory.y run data get entity @s Pos[1] 10
execute store result score #temp minecraft_but.lazy_inventory.z run data get entity @s Pos[2] 10

#> Compare current position to last position
scoreboard players operation $diff minecraft_but.lazy_inventory.x = #temp minecraft_but.lazy_inventory.x
scoreboard players operation $diff minecraft_but.lazy_inventory.y = #temp minecraft_but.lazy_inventory.y
scoreboard players operation $diff minecraft_but.lazy_inventory.z = #temp minecraft_but.lazy_inventory.z

scoreboard players operation $diff minecraft_but.lazy_inventory.x -= @s minecraft_but.lazy_inventory.x
scoreboard players operation $diff minecraft_but.lazy_inventory.y -= @s minecraft_but.lazy_inventory.y
scoreboard players operation $diff minecraft_but.lazy_inventory.z -= @s minecraft_but.lazy_inventory.z

#> If difference is negative, make it positive
execute if score $diff minecraft_but.lazy_inventory.x matches ..-1 run scoreboard players operation $diff minecraft_but.lazy_inventory.x *= #-1 minecraft_but.math
execute if score $diff minecraft_but.lazy_inventory.y matches ..-1 run scoreboard players operation $diff minecraft_but.lazy_inventory.y *= #-1 minecraft_but.math
execute if score $diff minecraft_but.lazy_inventory.z matches ..-1 run scoreboard players operation $diff minecraft_but.lazy_inventory.z *= #-1 minecraft_but.math

#> Add differences together for total difference
scoreboard players operation @s minecraft_but.lazy_inventory = $diff minecraft_but.lazy_inventory.x
scoreboard players operation @s minecraft_but.lazy_inventory += $diff minecraft_but.lazy_inventory.y
scoreboard players operation @s minecraft_but.lazy_inventory += $diff minecraft_but.lazy_inventory.z

#> Save current position for later
scoreboard players operation @s minecraft_but.lazy_inventory.x = #temp minecraft_but.lazy_inventory.x
scoreboard players operation @s minecraft_but.lazy_inventory.y = #temp minecraft_but.lazy_inventory.y
scoreboard players operation @s minecraft_but.lazy_inventory.z = #temp minecraft_but.lazy_inventory.z