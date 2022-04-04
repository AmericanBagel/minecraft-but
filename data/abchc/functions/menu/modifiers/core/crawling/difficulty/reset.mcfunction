#> abchc:menu/modifiers/core/crawling/difficulty/reset
# Reset crawling difficulty to global difficulty
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/crawling/**
# @context player

#> Click sound
function abchc:menu/actions/click

#> Reset to global difficulty
scoreboard players operation difficulty.crawling abch.config = difficulty.global abch.config

#> Update menu
function abchc:menu/modifiers/core/crawling/config