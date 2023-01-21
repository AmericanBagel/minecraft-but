#> abchc:menu/modifiers/core/death_orb/corrupt/reset
# Reset death_orb config score corrupt to default
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/death_orb/**
# @context player

#> Reset
# If default was set, set score to default
execute if score death_orb.corrupt abch.default matches -2147483648..2147483647 run scoreboard players operation death_orb.corrupt abch.config = death_orb.corrupt abch.default
# If default wasn't set, set score to 0
execute unless score death_orb.corrupt abch.default matches -2147483648..2147483647 run scoreboard players set death_orb.corrupt abch.config 0

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/death_orb/config