#> abchc:modifiers/look_straight/main
# Main function for "Look Straight" modifier
# Force players to look in a certain direction

execute as @a[ tag=!abch.blacklist, tag=!abch.look_straight.blacklist, tag=!global.ignore ] store result score @s abch.look_straight.x run data get entity @s Rotation[1]
execute as @a[ tag=!abch.blacklist, tag=!abch.look_straight.blacklist, tag=!global.ignore ] store result score @s abch.look_straight.y run data get entity @s Rotation[0]

execute as @a[ tag=!abch.blacklist, tag=!abch.look_straight.blacklist, tag=!global.ignore ] at @s if score look_straight.x abch.config matches 1 run function abchc:modifiers/look_straight/x/tree
execute as @a[ tag=!abch.blacklist, tag=!abch.look_straight.blacklist, tag=!global.ignore ] at @s if score look_straight.y abch.config matches 1 run function abchc:modifiers/look_straight/y/tree