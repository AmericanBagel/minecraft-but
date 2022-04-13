#> abchc:modifiers/mermaid/main
# Main function for "mermaid" modifier
# Kill players who are out of water
# @within abchc:modifiers/directory
# @context root

#> Remove tag applied in previous tick
tag @a remove abch.mermaid.in_water

#> Add in water tag if player is in water (or waterlogged block)
execute as @a[ tag=!abch.blacklist, tag=!abch.mermaid.blacklist, gamemode=!creative, gamemode=!spectator ] at @s if block ~ ~ ~ #abchc:water run tag @s add abch.mermaid.in_water
execute as @a[ tag=!abch.blacklist, tag=!abch.mermaid.blacklist, gamemode=!creative, gamemode=!spectator ] at @s if block ~ ~ ~ #aestd1:all[waterlogged=true] run tag @s add abch.mermaid.in_water

#> Mercy
execute as @e[ type=player, tag=!abch.blacklist, tag=!abch.mermaid.blacklist, gamemode=!creative, gamemode=!spectator, tag=!abch.mermaid.in_water] at @s if score @s abch.mermaid.deaths matches 1.. run function abchc:modifiers/mermaid/mercy/directory
scoreboard players reset @e[ type=player ] abch.mermaid.deaths

#> If player isn't in water, give effect
execute as @a[ tag=!abch.blacklist, tag=!abch.mermaid.blacklist, gamemode=!creative, gamemode=!spectator, tag=!abch.mermaid.in_water ] at @s run function abchc:modifiers/mermaid/out_of_water

#> If player is in water, clear effects applied if player was outside water
execute as @a[ tag=!abch.blacklist, tag=!abch.mermaid.blacklist, gamemode=!creative, gamemode=!spectator, tag=abch.mermaid.in_water] at @s run function abchc:modifiers/mermaid/in_water