#> minecraft_but.core:modifiers/death_swap/swap/directory
# Try to swap players
# @within minecraft_but.core:modifiers/death_swap/main
# @context root
# @output
#   score $players minecraft_but.death_swap
#       Player count

# Remove swapped tag
tag @a[tag=minecraft_but.death_swap.swapped] remove minecraft_but.death_swap.swapped

# Get player count into $players
execute store result score $players minecraft_but.death_swap if entity @a[tag=!minecraft_but.death_swap.blacklist,tag=!minecraft_but.blacklist,tag=!global.ignore]

# If player count is above 2, swap
execute if score $players minecraft_but.death_swap matches 2.. as @r at @s run function minecraft_but.core:modifiers/death_swap/swap/swap