#> abchc:modifiers/explosive_sight/load
# Load function for explosive sight modifier
# Manage configs and defaults
# @within abchc:modifiers/load
# @context root

scoreboard objectives add abch.explosive_sight.raycast dummy

execute if score difficulty.global abch.config matches 1 run scoreboard players set explosive_sight.radius abch.default 2
execute if score difficulty.global abch.config matches 2 run scoreboard players set explosive_sight.radius abch.default 3
execute if score difficulty.global abch.config matches 3 run scoreboard players set explosive_sight.radius abch.default 4