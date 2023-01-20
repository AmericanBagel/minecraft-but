#> abchc:modifiers/troglodyte/check_difficulty
# Figure out what the difficulty is and then give effects based on light level
# @within abchc:modifiers/troglodyte/**
# @context abchc:modifiers/troglodyte/main

#> Config
execute as @a[tag=!abch.blacklist, tag=!abch.troglodyte.blacklist, tag=!global.ignore, gamemode=!creative, gamemode=!spectator ] if score difficulty.troglodyte abch.config matches 0..3 unless score @s abch.troglodyte.mercy_timer matches 1.. run function abchc:modifiers/troglodyte/difficulty_tree

#> Default
execute as @a[tag=!abch.blacklist, tag=!abch.troglodyte.blacklist, tag=!global.ignore, gamemode=!creative, gamemode=!spectator ] unless score difficulty.troglodyte abch.config matches -2147483648..2147483647 if score difficulty.troglodyte abch.default matches 0..3 unless score @s abch.troglodyte.mercy_timer matches 1.. run function abchc:modifiers/troglodyte/difficulty_tree_default