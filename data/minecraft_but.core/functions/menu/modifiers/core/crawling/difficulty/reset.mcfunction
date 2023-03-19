#> minecraft_but.coreraft_but.core:menu/modifiers/core/crawling/difficulty/reset
# Reset crawling difficulty to global difficulty
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.coreraft_but.core:menu/modifiers/core/crawling/**
# @context player

#> Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

#> Reset to global difficulty
scoreboard players operation difficulty.crawling minecraft_but.config = difficulty.global minecraft_but.config

#> Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/crawling/config