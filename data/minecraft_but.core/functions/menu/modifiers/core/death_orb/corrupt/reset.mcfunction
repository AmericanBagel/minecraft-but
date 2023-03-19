#> minecraft_but.coreraft_but.core:menu/modifiers/core/death_orb/corrupt/reset
# Reset death_orb config score corrupt to default
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.coreraft_but.core:menu/modifiers/core/death_orb/**
# @context player

#> Reset
# If default was set, set score to default
execute if score death_orb.corrupt minecraft_but.default matches -2147483648..2147483647 run scoreboard players operation death_orb.corrupt minecraft_but.config = death_orb.corrupt minecraft_but.default
# If default wasn't set, set score to 0
execute unless score death_orb.corrupt minecraft_but.default matches -2147483648..2147483647 run scoreboard players set death_orb.corrupt minecraft_but.config 0

#> Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/death_orb/config