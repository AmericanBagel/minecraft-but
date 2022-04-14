#> abchc:modifiers/explosive_arrows/load
# Load function for "explosive arrows"
# @within abchc:modifiers/load
# @context root

scoreboard players set explosive_arrows.radius abch.default 2
execute unless score explosive_arrows.radius abch.config matches -2147483648..2147483647 run scoreboard players operation explosive_arrows.radius abch.config = explosive_arrows.radius abch.default