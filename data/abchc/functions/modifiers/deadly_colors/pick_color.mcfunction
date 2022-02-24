execute store result score @s abch.deadly_colors.random run loot spawn ~ ~-1000 ~ loot abchc:1r10

execute if score @s abch.deadly_colors.random matches 1..10 run function abchc:modifiers/deadly_colors/red/warn


## colors
# red
# orange
# yellow
# green
# blue
# violet
# brown
# black
# white
# gray