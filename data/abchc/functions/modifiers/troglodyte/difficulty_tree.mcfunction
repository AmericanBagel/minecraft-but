#> abchc:modifiers/troglodyte/difficulty_tree
# Determine what the difficulty is and act based on it
# @within abchc:modifiers/troglodyte/**
# @context @a[tag=!abch.blacklist, tag=!abch.troglodyte.blacklist, tag=!global.ignore, gamemode=!creative, gamemode=!spectator ] unless score difficulty.troglodyte abch.config matches -2147483648..2147483647
# @parent abchc:modifiers/troglodyte/main

execute if score difficulty.troglodyte abch.config matches 0 run function abchc:modifiers/troglodyte/peaceful
execute if score difficulty.troglodyte abch.config matches 1 run function abchc:modifiers/troglodyte/easy
execute if score difficulty.troglodyte abch.config matches 2 run function abchc:modifiers/troglodyte/normal
execute if score difficulty.troglodyte abch.config matches 3 run function abchc:modifiers/troglodyte/hard