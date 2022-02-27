execute as @e[ type=!player ] at @s run data modify entity @e[ type=pig, limit=1, sort=nearest ] NoGravity set value 1b
effect give @e[ type=player ] slow_falling 1 255 false