#> minecraft_but.core:modifiers/chunk_error/load
scoreboard objectives add minecraft_but.chunk_error dummy
scoreboard objectives add minecraft_but.chunk_error.x dummy
scoreboard objectives add minecraft_but.chunk_error.y dummy
scoreboard objectives add minecraft_but.chunk_error.z dummy

scoreboard players set chunk_error.chance minecraft_but.default 2
execute unless score chunk_error.chance minecraft_but.config matches -2147483648..2147483647 run scoreboard players operation chunk_error.chance minecraft_but.config = chunk_error.chance minecraft_but.default

scoreboard players set chunk_error.recursion_limit minecraft_but.default 10
execute unless score chunk_error.recursion_limit minecraft_but.config matches -2147483648..2147483647 run scoreboard players operation chunk_error.recursion_limit minecraft_but.config = chunk_error.recursion_limit minecraft_but.default

scoreboard players set chunk_error.min_spread minecraft_but.default 24
execute unless score chunk_error.min_spread minecraft_but.config matches -2147483648..2147483647 run scoreboard players operation chunk_error.min_spread minecraft_but.config = chunk_error.min_spread minecraft_but.default

scoreboard players set chunk_error.max_spread minecraft_but.default 104
execute unless score chunk_error.max_spread minecraft_but.config matches -2147483648..2147483647 run scoreboard players operation chunk_error.min_spread minecraft_but.config = chunk_error.max_spread minecraft_but.default