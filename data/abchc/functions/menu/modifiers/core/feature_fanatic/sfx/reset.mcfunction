#> abchc:menu/modifiers/core/feature_fanatic/sfx/reset
# Reset feature_fanatic config score sfx to default
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/feature_fanatic/**
# @context player

#> Reset
# If default was set, set score to default
execute if score feature_fanatic.sfx abch.default matches -2147483648..2147483647 run scoreboard players operation feature_fanatic.sfx abch.config = feature_fanatic.sfx abch.default
# If default wasn't set, set score to 0
execute unless score feature_fanatic.sfx abch.default matches -2147483648..2147483647 run scoreboard players set feature_fanatic.sfx abch.config 0

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/feature_fanatic/config