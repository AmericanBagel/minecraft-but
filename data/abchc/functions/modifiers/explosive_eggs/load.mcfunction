#> abchc:modifiers/explosive_eggs/load
# Load function for "explosive eggs"
# @within abchc:modifiers/load
# @context root

scoreboard objectives add abch.explosive_eggs.UUID1 dummy
scoreboard objectives add abch.explosive_eggs.UUID2 dummy
scoreboard objectives add abch.explosive_eggs.UUID3 dummy
scoreboard objectives add abch.explosive_eggs.UUID4 dummy

scoreboard players set explosive_eggs.radius abch.default 2
execute unless score explosive_eggs.radius abch.config matches -2147483648..2147483647 run scoreboard players operation explosive_eggs.radius abch.config = explosive_eggs.radius abch.default