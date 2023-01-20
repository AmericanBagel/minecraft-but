#> abchc:modifiers/troglodyte/main
# Main function for "Troglodyte" modifier
# Players take damage from light
# @within abchc:modifiers/directory
# @context root

tag @a remove abch.troglodyte.mercied

#> Mercy
execute as @e[ type=player, tag=!abch.blacklist, tag=!abch.mermaid.blacklist, gamemode=!creative, gamemode=!spectator ] if score @s abch.troglodyte.deaths matches 1.. at @s if predicate abchc:troglodyte/light run function abchc:modifiers/troglodyte/mercy
scoreboard players reset @e[ type=player ] abch.troglodyte.deaths

execute as @e[ type=player ] if score @s abch.troglodyte.mercy_timer matches 1.. run function abchc:modifiers/troglodyte/mercy_warning

execute as @a[tag=!abch.blacklist, tag=!abch.troglodyte.blacklist, tag=!global.ignore, gamemode=!creative, gamemode=!spectator ] run function abchc:modifiers/troglodyte/check_difficulty