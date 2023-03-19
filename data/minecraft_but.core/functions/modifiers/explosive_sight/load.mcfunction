#> minecraft_but.core:modifiers/explosive_sight/load
# Load function for explosive sight modifier
# Manage configs and defaults
# @within minecraft_but.core:modifiers/load
# @context root

scoreboard objectives add minecraft_but.explosive_sight.raycast dummy

execute if score difficulty.global minecraft_but.config matches 1 run scoreboard players set explosive_sight.radius minecraft_but.default 2
execute if score difficulty.global minecraft_but.config matches 2 run scoreboard players set explosive_sight.radius minecraft_but.default 3
execute if score difficulty.global minecraft_but.config matches 3 run scoreboard players set explosive_sight.radius minecraft_but.default 4