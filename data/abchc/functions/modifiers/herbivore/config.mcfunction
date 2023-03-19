#> abchc:modifiers/herbivore/config
# Manage configs for "herbivore" modifier
# @within abchc:modifiers/load
# @context player who ate non-meat

execute unless score difficulty.herbivore abch.custom matches 0..3 run scoreboard players operation difficulty.herbivore abch.default = difficulty.global abch.config