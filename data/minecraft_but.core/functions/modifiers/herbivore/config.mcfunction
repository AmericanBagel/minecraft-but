#> minecraft_but.coreraft_but.core:modifiers/herbivore/config
# Manage configs for "herbivore" modifier
# @within minecraft_but.coreraft_but.core:modifiers/load
# @context player who ate non-meat

execute unless score difficulty.herbivore minecraft_but.custom matches 0..3 run scoreboard players operation difficulty.herbivore minecraft_but.default = difficulty.global minecraft_but.config