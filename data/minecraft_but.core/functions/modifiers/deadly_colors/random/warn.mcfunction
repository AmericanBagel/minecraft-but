execute if score @s minecraft_but.deadly_colors.color matches 1 run function minecraft_but.core:modifiers/deadly_colors/colors/red/warn
execute if score @s minecraft_but.deadly_colors.color matches 2 run function minecraft_but.core:modifiers/deadly_colors/colors/orange/warn
execute if score @s minecraft_but.deadly_colors.color matches 3 run function minecraft_but.core:modifiers/deadly_colors/colors/yellow/warn
execute if score @s minecraft_but.deadly_colors.color matches 4 run function minecraft_but.core:modifiers/deadly_colors/colors/green/warn
execute if score @s minecraft_but.deadly_colors.color matches 5 run function minecraft_but.core:modifiers/deadly_colors/colors/blue/warn
execute if score @s minecraft_but.deadly_colors.color matches 6 run function minecraft_but.core:modifiers/deadly_colors/colors/violet/warn
execute if score @s minecraft_but.deadly_colors.color matches 7 run function minecraft_but.core:modifiers/deadly_colors/colors/brown/warn
execute if score @s minecraft_but.deadly_colors.color matches 8 run function minecraft_but.core:modifiers/deadly_colors/colors/light/warn
execute if score @s minecraft_but.deadly_colors.color matches 9 run function minecraft_but.core:modifiers/deadly_colors/colors/dark/warn



title @s actionbar ["",{"text":"\u2620","color":"black"},{"text":" Deadly","color":"#BC0002"},{"text":" C","bold":true,"color":"#FE0103"},{"text":"o","bold":true,"color":"#F96E00"},{"text":"l","bold":true,"color":"#FCFF00"},{"text":"o","bold":true,"color":"#03FF00"},{"text":"r","bold":true,"color":"#1D6DFE"},{"text":": ","bold":true},{"nbt":"red","storage":"minecraft_but.core:modifiers/deadly_colors","interpret": true},{"nbt":"orange","storage":"minecraft_but.core:modifiers/deadly_colors","interpret": true},{"nbt":"yellow","storage":"minecraft_but.core:modifiers/deadly_colors","interpret": true},{"nbt":"green","storage":"minecraft_but.core:modifiers/deadly_colors","interpret": true},{"nbt":"blue","storage":"minecraft_but.core:modifiers/deadly_colors","interpret": true},{"nbt":"violet","storage":"minecraft_but.core:modifiers/deadly_colors","interpret": true},{"nbt":"brown","storage":"minecraft_but.core:modifiers/deadly_colors","interpret": true},{"nbt":"light","storage":"minecraft_but.core:modifiers/deadly_colors","interpret": true},{"nbt":"dark","storage":"minecraft_but.core:modifiers/deadly_colors","interpret": true}]

data remove storage minecraft_but.core:modifiers/deadly_colors red
data remove storage minecraft_but.core:modifiers/deadly_colors orange
data remove storage minecraft_but.core:modifiers/deadly_colors yellow
data remove storage minecraft_but.core:modifiers/deadly_colors green
data remove storage minecraft_but.core:modifiers/deadly_colors blue
data remove storage minecraft_but.core:modifiers/deadly_colors violet
data remove storage minecraft_but.core:modifiers/deadly_colors brown
data remove storage minecraft_but.core:modifiers/deadly_colors light
data remove storage minecraft_but.core:modifiers/deadly_colors dark