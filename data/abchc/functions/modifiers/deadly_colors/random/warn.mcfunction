execute if score @s abch.deadly_colors.color matches 1 run function abchc:modifiers/deadly_colors/colors/red/warn
execute if score @s abch.deadly_colors.color matches 2 run function abchc:modifiers/deadly_colors/colors/orange/warn
execute if score @s abch.deadly_colors.color matches 3 run function abchc:modifiers/deadly_colors/colors/yellow/warn
execute if score @s abch.deadly_colors.color matches 4 run function abchc:modifiers/deadly_colors/colors/green/warn
execute if score @s abch.deadly_colors.color matches 5 run function abchc:modifiers/deadly_colors/colors/blue/warn
execute if score @s abch.deadly_colors.color matches 6 run function abchc:modifiers/deadly_colors/colors/violet/warn
execute if score @s abch.deadly_colors.color matches 7 run function abchc:modifiers/deadly_colors/colors/brown/warn
execute if score @s abch.deadly_colors.color matches 8 run function abchc:modifiers/deadly_colors/colors/light/warn
execute if score @s abch.deadly_colors.color matches 9 run function abchc:modifiers/deadly_colors/colors/dark/warn



title @s actionbar ["",{"text":"\u2620","color":"black"},{"text":" Deadly","color":"#BC0002"},{"text":" C","bold":true,"color":"#FE0103"},{"text":"o","bold":true,"color":"#F96E00"},{"text":"l","bold":true,"color":"#FCFF00"},{"text":"o","bold":true,"color":"#03FF00"},{"text":"r","bold":true,"color":"#1D6DFE"},{"text":": ","bold":true},{"nbt":"red","storage":"abchc:modifiers/deadly_colors","interpret": true},{"nbt":"orange","storage":"abchc:modifiers/deadly_colors","interpret": true},{"nbt":"yellow","storage":"abchc:modifiers/deadly_colors","interpret": true},{"nbt":"green","storage":"abchc:modifiers/deadly_colors","interpret": true},{"nbt":"blue","storage":"abchc:modifiers/deadly_colors","interpret": true},{"nbt":"violet","storage":"abchc:modifiers/deadly_colors","interpret": true},{"nbt":"brown","storage":"abchc:modifiers/deadly_colors","interpret": true},{"nbt":"light","storage":"abchc:modifiers/deadly_colors","interpret": true},{"nbt":"dark","storage":"abchc:modifiers/deadly_colors","interpret": true}]

data remove storage abchc:modifiers/deadly_colors red
data remove storage abchc:modifiers/deadly_colors orange
data remove storage abchc:modifiers/deadly_colors yellow
data remove storage abchc:modifiers/deadly_colors green
data remove storage abchc:modifiers/deadly_colors blue
data remove storage abchc:modifiers/deadly_colors violet
data remove storage abchc:modifiers/deadly_colors brown
data remove storage abchc:modifiers/deadly_colors light
data remove storage abchc:modifiers/deadly_colors dark