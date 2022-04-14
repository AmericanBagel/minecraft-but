#> abchc:modifiers/explosive_snowballs/load
# Load function for "explosive snowballs"
# @within abchc:modifiers/load
# @context root

scoreboard players set explosive_snowballs.radius abch.default 2
execute unless score explosive_snowballs.radius abch.config matches -2147483648..2147483647 run scoreboard players operation explosive_snowballs.radius abch.config = explosive_snowballs.radius abch.default