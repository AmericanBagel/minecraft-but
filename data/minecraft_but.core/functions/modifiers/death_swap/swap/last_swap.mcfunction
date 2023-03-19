#> minecraft_but.core:modifiers/death_swap/swap/last_swap
# Swap last non-swapped player with random already-swapped player so odd player counts work out
# @within minecraft_but.core:modifiers/death_swap/**
# @context last player

tag @r[tag=minecraft_but.death_swap.swapped] remove minecraft_but.death_swap.swapped
function minecraft_but.core:modifiers/death_swap/swap/swap