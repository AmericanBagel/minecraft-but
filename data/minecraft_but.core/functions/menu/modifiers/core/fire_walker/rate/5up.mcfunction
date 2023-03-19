#> minecraft_but.core:menu/modifiers/core/fire_walker/rate/5up
# Increase fire_walker config score rate by 5
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/modifiers/core/fire_walker/**
# @context player

#> Add 5 to score
scoreboard players add fire_walker.rate minecraft_but.config 5

#> If number outside range, reset score
# If below minimum, set to max
execute if score fire_walker.rate minecraft_but.config < #fire_walker.rate_min minecraft_but.default run scoreboard players operation fire_walker.rate minecraft_but.config = #fire_walker.rate_max minecraft_but.default
# If above maximum, set to min
execute if score fire_walker.rate minecraft_but.config > #fire_walker.rate_max minecraft_but.default run scoreboard players operation fire_walker.rate minecraft_but.config = #fire_walker.rate_min minecraft_but.default

#> Click sound
function minecraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.core:menu/modifiers/core/fire_walker/config