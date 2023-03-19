#> minecraft_but.coreraft_but.core:modifiers/troglodyte/check_difficulty
# Figure out what the difficulty is and then give effects based on light level
# @within minecraft_but.coreraft_but.core:modifiers/troglodyte/**
# @context minecraft_but.coreraft_but.core:modifiers/troglodyte/main

#> Config
execute as @a[tag=!minecraft_but.blacklist, tag=!minecraft_but.troglodyte.blacklist, tag=!global.ignore, gamemode=!creative, gamemode=!spectator ] if score difficulty.troglodyte minecraft_but.config matches 0..3 unless score @s minecraft_but.troglodyte.mminecraft_but.coretimer matches 1.. run function minecraft_but.core:modifiers/troglodyte/difficulty_tree

#> Default
execute as @a[tag=!minecraft_but.blacklist, tag=!minecraft_but.troglodyte.blacklist, tag=!global.ignore, gamemode=!creative, gamemode=!spectator ] unless score difficulty.troglodyte minecraft_but.config matches -2147483648..2147483647 if score difficulty.troglodyte minecraft_but.default matches 0..3 unless score @s minecraft_but.trominecraft_but.corete.mercy_timer matches 1.. run function minecraft_but.core:modifiers/troglodyte/difficulty_tree_default