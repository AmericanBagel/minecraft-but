#> minecraft_but.coreraft_but.core:menu/modifiers/core/anvil_rain/chance/reset
# Reset anvil_rain config score chance to default
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.coreraft_but.core:menu/modifiers/core/anvil_rain/**
# @context player

#> Reset
# If default was set, set score to default
execute if score anvil_rain.chance minecraft_but.default matches -2147483648..2147483647 run scoreboard players operation anvil_rain.chance minecraft_but.config = anvil_rain.chance minecraft_but.default
# If default wasn't set, set score to 1
execute unless score anvil_rain.chance minecraft_but.default matches -2147483648..2147483647 run scoreboard players set anvil_rain.chance minecraft_but.config 1

#> Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/anvil_rain/config