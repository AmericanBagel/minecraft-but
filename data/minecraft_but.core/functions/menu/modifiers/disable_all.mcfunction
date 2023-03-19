#> minecraft_but.core:menu/modifiers/disable_all
# Disable all modifiers
# @within minecraft_but.core:modifiers/**
# @context player
# @output
#   score * minecraft_but.toggle
#       Enabled values for all modifiers on manual mode

scoreboard players reset * minecraft_but.toggle