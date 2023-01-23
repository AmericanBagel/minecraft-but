#> minecraft_but.core:modifiers/death_swap/swap/swap
# Swap @s to @r
# @within minecraft_but.core:modifiers/death_swap/main
# @context player
# @input
#   score death_swap.log minecraft_but.config
#       Whether or not to tell players who they swapped with.
# @output
#   score $players minecraft_but.death_swap
#       Player count

#> Swap
# Tag self so @r doesnt select self
tag @s add minecraft_but.death_swap.self

# Select random player to swap with
tag @r[tag=!minecraft_but.death_swap.swapped,tag=!minecraft_but.death_swap.self] add minecraft_but.death_swap.swap

# Log to players' chat
execute unless score death_swap.log minecraft_but.config matches ..0 run tellraw @s [{"text":"You swapped with "},{"selector":"@a[tag=minecraft_but.death_swap.swap]"}]
execute unless score death_swap.log minecraft_but.config matches ..0 run tellraw @a[tag=minecraft_but.death_swap.swap] [{"text":"You swapped with "},{"selector":"@s"}]

# Summon marker AS for swapping other player to @s
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,NoBasePlate:1b,NoGravity:1b,Tags:["minecraft_but.death_swap.marker"]}
tp @e[tag=minecraft_but.death_swap.marker] ~ ~ ~ ~ ~

# Teleport player to other player
tp @s @p[tag=minecraft_but.death_swap.swap]

# Teleport other player to where player was
tp @p[tag=minecraft_but.death_swap.swap] @e[tag=minecraft_but.death_swap.marker,limit=1,sort=nearest]

#> Teleport SFX
playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 0
execute as @p[tag=minecraft_but.death_swap.swap] at @s run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 0

#> Clean up
# Tag self as swapped
tag @s add minecraft_but.death_swap.swapped
# Tag other player as swapped
tag @a[tag=minecraft_but.death_swap.swap] add minecraft_but.death_swap.swapped

# Remove other player's temporary swap tag
tag @a[tag=minecraft_but.death_swap.swap] remove minecraft_but.death_swap.swap

# Kill the marker which held player's position
kill @e[tag=minecraft_but.death_swap.marker]

# Remove self tag
tag @a remove minecraft_but.death_swap.self

#> Swap other players
# Get amount of non-swapped players
execute store result score $players minecraft_but.death_swap if entity @a[tag=!minecraft_but.death_swap.swapped,tag=!minecraft_but.death_swap.blacklist,tag=!minecraft_but.blacklist,tag=!global.ignore]

# If there's more players to swap, run this function for them
execute if score $players minecraft_but.death_swap matches 2.. as @r[tag=!minecraft_but.death_swap.swapped,tag=!minecraft_but.death_swap.blacklist,tag=!minecraft_but.blacklist,tag=!global.ignore] at @s run function minecraft_but.core:modifiers/death_swap/swap/swap

# If there's only one player left, tp player to already swapped player
execute if score $players minecraft_but.death_swap matches 1 as @a[tag=!minecraft_but.death_swap.swapped,tag=!minecraft_but.death_swap.blacklist,tag=!minecraft_but.blacklist,tag=!global.ignore] at @s run function minecraft_but.core:modifiers/death_swap/swap/last_swap