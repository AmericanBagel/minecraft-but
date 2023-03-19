#> minecraft_but.coreraft_but.core:modifiers/mermaid/main
# Main function for "mermaid" modifier
# Kill players who are out of water
# @within minecraft_but.coreraft_but.core:modifiers/directory
# @context root

#> Remove tag applied in previous tick
tag @a remove minecraft_but.mermaid.in_water
tag @a remove minecraft_but.mermaid.rain

#> Add in water tag if player is in water (or waterlogged block)
execute as @a[ tag=!minecraft_but.blacklist, tag=!minecraft_but.mermaid.blacklist, gamemode=!creative, gamemode=!spectator ] aminecraft_but.corerun function minecraft_but.core:modifiers/mermaid/check_for_water

#> Mercy
execute as @e[ type=player, tag=!minecraft_but.blacklist, tag=!minecraft_but.mermaid.blacklist, gamemode=!creative, gamemode=!spectator, tag=!minecraft_but.mermaid.in_water] at @s if score @s minecraft_but.mermminecraft_but.coreeaths matches 1.. run function minecraft_but.core:modifiers/mermaid/mercy
scoreboard players reset @e[ type=player ] minecraft_but.mermaid.deaths

#> If player isn't in water, give effect
execute as @a[ tag=!minecraft_but.blacklist, tag=!minecraft_but.mermaid.blacklist, gamemode=!creative, gamemode=!spectator, tag=!minecraft_but.mermaid.in_minecraft_but.core ] at @s run function minecraft_but.core:modifiers/mermaid/out_of_water

#> If player is in water, clear effects applied if player was outside water
execute as @a[ tag=!minecraft_but.blacklist, tag=!minecraft_but.mermaid.blacklist, gamemode=!creative, gamemode=!spectator, tag=minecraft_but.mermaid.inminecraft_but.corer] at @s run function minecraft_but.core:modifiers/mermaid/in_water