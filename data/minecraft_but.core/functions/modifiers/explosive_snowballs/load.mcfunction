#> minecraft_but.coreraft_but.core:modifiers/explosive_snowballs/load
# Load function for "explosive snowballs"
# @within minecraft_but.coreraft_but.core:modifiers/load
# @context root

scoreboard players set explosive_snowballs.radius minecraft_but.default 2
execute unless score explosive_snowballs.radius minecraft_but.config matches -2147483648..2147483647 run scoreboard players operation explosive_snowballs.radius minecraft_but.config = explosive_snowballs.radius minecraft_but.default