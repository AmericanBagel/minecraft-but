#> minecraft_but.core:menu/modifiers/core/explosive_phantoms/interval/5down
# Increase explosive_phantoms config score interval by 5
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/modifiers/core/explosive_phantoms/**
# @context player

#> Remove 5 from score
scoreboard players remove explosive_phantoms.interval minecraft_but.config 5

#> If number outside range, reset score
# If below minimum, set to max
execute if score explosive_phantoms.interval minecraft_but.config < #explosive_phantoms.interval_min minecraft_but.default run scoreboard players operation explosive_phantoms.interval minecraft_but.config = #explosive_phantoms.interval_max minecraft_but.default
# If above maximum, set to min
execute if score explosive_phantoms.interval minecraft_but.config > #explosive_phantoms.interval_max minecraft_but.default run scoreboard players operation explosive_phantoms.interval minecraft_but.config = #explosive_phantoms.interval_min minecraft_but.default

#> Click sound
function minecraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.core:menu/modifiers/core/explosive_phantoms/config