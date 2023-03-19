#> minecraft_but.coreraft_but.core:modifiers/troglodyte/main
# Main function for "Troglodyte" modifier
# Players take damage from light
# @within minecraft_but.coreraft_but.core:modifiers/directory
# @context root

tag @a remove minecraft_but.troglodyte.mercied

#> Mercy
execute as @e[ type=player, tag=!minecraft_but.blacklist, tag=!minecraft_but.mermaid.blacklist, gamemode=!creative, gamemode=!spectator ] if score @s minecraft_but.troglodyte.deaths matcminecraft_but.core.. at @s if predicate minecraftminecraft_but.corecore:troglodyte/light run function minecraft_but.core:modifiers/troglodyte/mercy
scoreboard players reset @e[ type=player ] minecraft_but.troglodyte.deaths

execute as @e[ type=player ] if score @s minecraft_but.troglodyte.mercy_timer matches 1.. run minecraft_but.coreion minecraft_but.core:modifiers/troglodyte/mercy_warning

execute as @a[tag=!minecraft_but.blacklist, tag=!minecraft_but.troglodyte.blacklist, tag=!global.ignore, gamemode=!creative, gamemode=!spectatminecraft_but.corerun function minecraft_but.core:modifiers/troglodyte/check_difficulty