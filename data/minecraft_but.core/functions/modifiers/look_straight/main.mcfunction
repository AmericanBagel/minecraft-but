#> minecraft_but.core:modifiers/look_straight/main
# Main function for "Look Straight" modifier
# Force players to look in a certain direction

execute as @a[ tag=!minecraft_but.blacklist, tag=!minecraft_but.look_straight.blacklist, tag=!global.ignore ] store result score @s minecraft_but.look_straight.x run data get entity @s Rotation[1]
execute as @a[ tag=!minecraft_but.blacklist, tag=!minecraft_but.look_straight.blacklist, tag=!global.ignore ] store result score @s minecraft_but.look_straight.y run data get entity @s Rotation[0]

execute as @a[ tag=!minecraft_but.blacklist, tag=!minecraft_but.look_straight.blacklist, tag=!global.ignore ] at @s if score look_straight.x minecraft_but.config matches 1 run function minecraft_but.core:modifiers/look_straight/x/tree
execute as @a[ tag=!minecraft_but.blacklist, tag=!minecraft_but.look_straight.blacklist, tag=!global.ignore ] at @s if score look_straight.y minecraft_but.config matches 1 run function minecraft_but.core:modifiers/look_straight/y/tree