#> abchc:modifiers/troglodyte/main
# Main function for "Troglodyte" modifier
# Players take damage from light
# @within abchc:modifiers/directory
# @context root

#> Mercy
execute as @a if score @s abch.troglodyte.deaths matches 1.. run function abchc:modifiers/troglodyte/mercy

#> Config
execute as @a[tag=!abch.blacklist, tag=!abch.troglodyte.blacklist, tag=!global.ignore, gamemode=!creative, gamemode=!spectator ] if score difficulty.troglodyte abch.config matches 0..3 run function abchc:modifiers/troglodyte/difficulty_tree

#> Default
execute as @a[tag=!abch.blacklist, tag=!abch.troglodyte.blacklist, tag=!global.ignore, gamemode=!creative, gamemode=!spectator ] unless score difficulty.troglodyte abch.config matches -2147483648..2147483647 if score difficulty.troglodyte abch.default matches 0..3 run function abchc:modifiers/troglodyte/difficulty_tree_default