#> minecraft_but.core:modifiers/explosive_arrows/load
# Load function for "explosive arrows"
# @within minecraft_but.core:modifiers/load
# @context root

scoreboard players set explosive_arrows.radius minecraft_but.default 2
execute unless score explosive_arrows.radius minecraft_but.config matches -2147483648..2147483647 run scoreboard players operation explosive_arrows.radius minecraft_but.config = explosive_arrows.radius minecraft_but.default