#> minecraft_but.coreraft_but.core:menu/modifiers/core/crawling/creative/reset
# Reset crawling config score creative to default
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.coreraft_but.core:menu/modifiers/core/crawling/**
# @context player

#> Reset
# If default was set, set score to default
execute if score crawling.creative minecraft_but.default matches -2147483648..2147483647 run scoreboard players operation crawling.creative minecraft_but.config = crawling.creative minecraft_but.default
# If default wasn't set, set score to 0
execute unless score crawling.creative minecraft_but.default matches -2147483648..2147483647 run scoreboard players set crawling.creative minecraft_but.config 0

#> Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/crawling/config