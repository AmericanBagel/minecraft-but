#> minecraft_but.core:menu/actions/enable_feedback
# Enable sendCommandFeedback gamerule to respect gamerule setting after setting
# it to false to make menus clean
# @within minecraft_but.core:menu/**
# @context menu

execute if score gamerule.sendCommandFeedback minecraft_but.config matches 1.. run gamerule sendCommandFeedback true