#> minecraft_but.core:modifiers/explosive_eggs/load
# Load function for "explosive eggs"
# @within minecraft_but.core:modifiers/load
# @context root

scoreboard objectives add minecraft_but.explosive_eggs.UUID1 dummy
scoreboard objectives add minecraft_but.explosive_eggs.UUID2 dummy
scoreboard objectives add minecraft_but.explosive_eggs.UUID3 dummy
scoreboard objectives add minecraft_but.explosive_eggs.UUID4 dummy

scoreboard players set explosive_eggs.radius minecraft_but.default 2
execute unless score explosive_eggs.radius minecraft_but.config matches -2147483648..2147483647 run scoreboard players operation explosive_eggs.radius minecraft_but.config = explosive_eggs.radius minecraft_but.default