#> abchc:modifiers/carnivore/config
# Manage configs for "Carnivore" modifier
# @within abchc:modifiers/load
# @context player who ate non-meat

execute unless score difficulty.carnivore abch.custom matches 0..3 run scoreboard players operation difficulty.carnivore abch.default = difficulty.carnivore abch.config