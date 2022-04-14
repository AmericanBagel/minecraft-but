#> abchc:modifiers/explosive_eggs/load
# Load function for "explosive eggs"
# @within abchc:modifiers/load
# @context root

scoreboard players set explosive_eggs.radius abch.default 2
execute unless score explosive_eggs.radius abch.config matches -2147483648..2147483647 run scoreboard players operation explosive_eggs.radius abch.config = explosive_eggs.radius abch.default