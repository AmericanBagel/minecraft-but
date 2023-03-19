#> abchc:modifiers/keep_moving/move
# Heal moving players
# @context player
# @within abchc:modifiers/keep_moving/check
scoreboard players reset @s abch.keep_moving.still_time
effect clear @s slowness
effect clear @s wither
effect give @s regeneration 1 2