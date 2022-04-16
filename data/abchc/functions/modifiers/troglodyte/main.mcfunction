#> abchc:modifiers/troglodyte/main
# Main function for "Troglodyte" modifier
# Players take damage from light
# @within abchc:modifiers/directory
# @context root

#> Config
execute as @a[tag=!abch.blacklist, tag=!abch.troglodyte.blacklist, tag=!global.ignore, gamemode=!creative, gamemode=!spectator ] if score difficulty.troglodyte abch.config matches 0 run function abchc:modifiers/troglodyte/peaceful
execute as @a[tag=!abch.blacklist, tag=!abch.troglodyte.blacklist, tag=!global.ignore, gamemode=!creative, gamemode=!spectator ] if score difficulty.troglodyte abch.config matches 1 run function abchc:modifiers/troglodyte/easy
execute as @a[tag=!abch.blacklist, tag=!abch.troglodyte.blacklist, tag=!global.ignore, gamemode=!creative, gamemode=!spectator ] if score difficulty.troglodyte abch.config matches 2 run function abchc:modifiers/troglodyte/normal
execute as @a[tag=!abch.blacklist, tag=!abch.troglodyte.blacklist, tag=!global.ignore, gamemode=!creative, gamemode=!spectator ] if score difficulty.troglodyte abch.config matches 3 run function abchc:modifiers/troglodyte/hard

#> Default
execute as @a[tag=!abch.blacklist, tag=!abch.troglodyte.blacklist, tag=!global.ignore, gamemode=!creative, gamemode=!spectator ] unless score difficulty.troglodyte abch.config matches -2147483648..2147483647 if score difficulty.troglodyte abch.default matches 0 run function abchc:modifiers/troglodyte/peaceful
execute as @a[tag=!abch.blacklist, tag=!abch.troglodyte.blacklist, tag=!global.ignore, gamemode=!creative, gamemode=!spectator ] unless score difficulty.troglodyte abch.config matches -2147483648..2147483647 if score difficulty.troglodyte abch.default matches 1 run function abchc:modifiers/troglodyte/easy
execute as @a[tag=!abch.blacklist, tag=!abch.troglodyte.blacklist, tag=!global.ignore, gamemode=!creative, gamemode=!spectator ] unless score difficulty.troglodyte abch.config matches -2147483648..2147483647 if score difficulty.troglodyte abch.default matches 2 run function abchc:modifiers/troglodyte/normal
execute as @a[tag=!abch.blacklist, tag=!abch.troglodyte.blacklist, tag=!global.ignore, gamemode=!creative, gamemode=!spectator ] unless score difficulty.troglodyte abch.config matches -2147483648..2147483647 if score difficulty.troglodyte abch.default matches 3 run function abchc:modifiers/troglodyte/hard