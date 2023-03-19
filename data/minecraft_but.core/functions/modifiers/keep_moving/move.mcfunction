#> minecraft_but.coreraft_but.core:modifiers/keep_moving/move
# Heal moving players
# @context player
# @within minecraft_but.coreraft_but.core:modifiers/keep_moving/check
scoreboard players reset @s minecraft_but.keep_moving.still_time
effect clear @s slowness
effect clear @s wither
effect give @s regeneration 1 2