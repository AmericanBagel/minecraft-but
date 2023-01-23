#> minecraft_but.core:modifiers/config
# Update configs for modifiers
# @within minecraft_but.core:load
# @context root

#> Schedule config in one second
schedule function minecraft_but.core:modifiers/config 10t

#> Mode configs
scoreboard players set random.interval minecraft_but.default 5
execute unless score random.interval minecraft_but.config matches -2147483648..2147483647 run scoreboard players set random.interval minecraft_but.config 5

scoreboard players set random.interval_rand minecraft_but.default 15
execute unless score random.interval_rand minecraft_but.config matches -2147483648..2147483647 run scoreboard players set random.interval_rand minecraft_but.config 15


scoreboard players set random.rand minecraft_but.default 30
execute unless score random.interval_rand minecraft_but.config matches -2147483648..2147483647 run scoreboard players set random.interval_rand minecraft_but.config 30

scoreboard players operation random.max minecraft_but.default = $total_modifiers minecraft_but.toggle
execute unless score random.max minecraft_but.config matches -2147483648..2147483647 run scoreboard players operation random.max minecraft_but.config = $total_modifiers minecraft_but.toggle

scoreboard players set random.chance minecraft_but.default 200
execute unless score random.chance minecraft_but.config matches -2147483648..2147483647 run scoreboard players set random.chance minecraft_but.config 200

scoreboard players set random.reroll minecraft_but.default 1
execute unless score random.reroll minecraft_but.config matches -2147483648..2147483647 run scoreboard players set random.reroll minecraft_but.config 1


#> Difficulty
execute store result score difficulty.global minecraft_but.default run difficulty
execute unless score difficulty.global minecraft_but.custom matches -2147483648..2147483647 run scoreboard players operation difficulty.global minecraft_but.config = difficulty.global minecraft_but.default

#> Modifiers
function minecraft_but.core:modifiers/degradation/config
function minecraft_but.core:modifiers/herbivore/config
function minecraft_but.core:modifiers/carnivore/config