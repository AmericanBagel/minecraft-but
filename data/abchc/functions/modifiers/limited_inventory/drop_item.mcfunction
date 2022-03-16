#> abchc:modifiers/limited_inventory/drop_item
# Drop item entity from replaced item data
# @context player
# @within abchc:modifiers/limited_inventory/update_inv
# @output
#   storage abch.__temp__:limited_inventory Item
#       Replaced item's data. Usually the result of
#       a player clicking onto glass with an item
#       on their cursor.

##> Summon item
#summon item ~ ~ ~ {Tags:["abch.limited_inventory.init"],Item:{id:"minecraft:stone",Count:1b}}
#execute as @e[type=item,tag=abch.limited_inventory.init] run data modify entity @s Item set from storage abch.__temp__:limited_inventory Item
##data remove storage abch.__temp__:limited_inventory Item
#
##> Plop SFX
playsound minecraft:entity.item.pickup master @a ~ ~ ~ 2 0.5

#> Get Length
execute store result score $items abch.limited_inventory run data get storage abch.__temp__:limited_inventory Item

#> Summon item
summon item ~ ~ ~ {Tags:["abch.limited_inventory.init"],Item:{id:"minecraft:stone",Count:1b}}
execute as @e[type=item,tag=abch.limited_inventory.init] run data modify entity @s Item set from storage abch.__temp__:limited_inventory Item[0]
tag @e[type=item,tag=abch.limited_inventory.init] remove abch.limited_inventory.init
data remove storage abch.__temp__:limited_inventory Item[0]

#> If there are more indeces, continue looping through array
execute if score $items abch.limited_inventory matches 2.. run function abchc:modifiers/limited_inventory/drop_item