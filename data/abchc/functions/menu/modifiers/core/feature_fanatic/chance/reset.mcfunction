#> abchc:menu/modifiers/core/feature_fanatic/chance/reset
# Reset feature_fanatic config score chance to default
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/feature_fanatic/**
# @context player

#> Reset
# If default was set, set score to default
execute if score feature_fanatic.chance abch.default matches -2147483648..2147483647 run scoreboard players operation feature_fanatic.chance abch.config = feature_fanatic.chance abch.default
# If default wasn't set, set score to 1
execute unless score feature_fanatic.chance abch.default matches -2147483648..2147483647 run scoreboard players set feature_fanatic.chance abch.config 1

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/feature_fanatic/config