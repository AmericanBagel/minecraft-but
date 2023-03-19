#> minecraft_but.core:modifiers/carnivore/config
# Manage configs for "Carnivore" modifier
# @within minecraft_but.core:modifiers/load
# @context player who ate non-meat

execute unless score difficulty.carnivore minecraft_but.custom matches 0..3 run scoreboard players operation difficulty.carnivore minecraft_but.default = difficulty.carnivore minecraft_but.config