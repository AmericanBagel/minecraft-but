#> abchc:menu/modifiers/core/crawling/creative/reset
# Reset crawling config score creative to default
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/crawling/**
# @context player

#> Reset
# If default was set, set score to default
execute if score crawling.creative abch.default matches -2147483648..2147483647 run scoreboard players operation crawling.creative abch.config = crawling.creative abch.default
# If default wasn't set, set score to 0
execute unless score crawling.creative abch.default matches -2147483648..2147483647 run scoreboard players set crawling.creative abch.config 0

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/crawling/config