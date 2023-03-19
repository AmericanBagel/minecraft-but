#> minecraft_but.core:modifiers/troglodyte/difficulty_tree
# Determine what the difficulty is and act based on it
# @within minecraft_but.core:modifiers/troglodyte/**
# @context @a[tag=!minecraft_but.blacklist, tag=!minecraft_but.troglodyte.blacklist, tag=!global.ignore, gamemode=!creative, gamemode=!spectator ] unless score difficulty.troglodyte minecraft_but.config matches -2147483648..2147483647
# @parent minecraft_but.core:modifiers/troglodyte/main

execute if score difficulty.troglodyte minecraft_but.config matches 0 run function minecraft_but.core:modifiers/troglodyte/peaceful
execute if score difficulty.troglodyte minecraft_but.config matches 1 run function minecraft_but.core:modifiers/troglodyte/easy
execute if score difficulty.troglodyte minecraft_but.config matches 2 run function minecraft_but.core:modifiers/troglodyte/normal
execute if score difficulty.troglodyte minecraft_but.config matches 3 run function minecraft_but.core:modifiers/troglodyte/hard