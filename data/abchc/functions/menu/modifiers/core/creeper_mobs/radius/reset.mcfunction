#> abchc:menu/modifiers/core/creeper_mobs/radius/reset
# Reset creeper_mobs config score radius to default
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/creeper_mobs/**
# @context player

#> Reset
# If default was set, set score to default
execute if score creeper_mobs.radius abch.default matches -2147483648..2147483647 run scoreboard players operation creeper_mobs.radius abch.config = creeper_mobs.radius abch.default
# If default wasn't set, set score to 1
execute unless score creeper_mobs.radius abch.default matches -2147483648..2147483647 run scoreboard players set creeper_mobs.radius abch.config 1

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/creeper_mobs/config