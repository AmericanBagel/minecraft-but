#> abchc:modifiers/death_swap/swap/directory
# Try to swap players
# @within abchc:modifiers/death_swap/main
# @context root
# @output
#   score $players abch.death_swap
#       Player count

# Remove swapped tag
tag @a[tag=abch.death_swap.swapped] remove abch.death_swap.swapped

# Get player count into $players
execute store result score $players abch.death_swap if entity @a[tag=!abch.death_swap.blacklist,tag=!abch.blacklist,tag=!global.ignore]

# If player count is above 2, swap
execute if score $players abch.death_swap matches 2.. as @r at @s run function abchc:modifiers/death_swap/swap/swap