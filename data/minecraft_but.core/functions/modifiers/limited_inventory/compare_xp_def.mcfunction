#> minecraft_but.core:modifiers/limited_inventory/compare_xp_def
# Compare previous level and current level to play sound
# to notify players when they have an extra slot available
# @within minecraft_but.core:modifiers/limited_inventory/actions
# @context player

execute store result score $xp2 minecraft_but.limited_inventory run xp query @s levels
scoreboard players operation $xp2 minecraft_but.limited_inventory /= #2 minecraft_but.math

#execute if score $xp1 minecraft_but.limited_inventory < $xp2 minecraft_but.limited_inventory unless score $xp1 minecraft_but.limited_inventory matches 26.. run playsound minecraft:entity.player.levelup master @s ~ ~ ~ .5 .5
execute if score $xp1 minecraft_but.limited_inventory < $xp2 minecraft_but.limited_inventory unless score $xp1 minecraft_but.limited_inventory matches 26.. run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~ 1 0
execute if score $xp1 minecraft_but.limited_inventory < $xp2 minecraft_but.limited_inventory unless score $xp1 minecraft_but.limited_inventory matches 26.. run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 .15
execute if score $xp1 minecraft_but.limited_inventory < $xp2 minecraft_but.limited_inventory unless score $xp1 minecraft_but.limited_inventory matches 26.. run title @s actionbar {"text":"A new slot has been unlocked!","color":"#eceff5"}

execute store result score $xp1 minecraft_but.limited_inventory run xp query @s levels
scoreboard players operation $xp1 minecraft_but.limited_inventory /= #2 minecraft_but.math