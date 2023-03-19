#> abchc:modifiers/death_swap/swap/last_swap
# Swap last non-swapped player with random already-swapped player so odd player counts work out
# @within abchc:modifiers/death_swap/**
# @context last player

tag @r[tag=abch.death_swap.swapped] remove abch.death_swap.swapped
function abchc:modifiers/death_swap/swap/swap