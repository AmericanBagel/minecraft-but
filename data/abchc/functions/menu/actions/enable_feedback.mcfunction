#> abchc:menu/actions/enable_feedback
# Enable sendCommandFeedback gamerule to respect gamerule setting after setting
# it to false to make menus clean
# @within abchc:menu/**
# @context menu

execute if score gamerule.sendCommandFeedback abch.config matches 1.. run gamerule sendCommandFeedback true