#> abchc:modifiers/config
# Update configs for modifiers
# @within abchc:load
# @context root

#> Schedule config in one second
schedule function abchc:modifiers/config 10t

#> Mode configs
scoreboard players set random.interval abch.default 5
execute unless score random.interval abch.config matches -2147483648..2147483647 run scoreboard players set random.interval abch.config 5

scoreboard players set random.interval_rand abch.default 15
execute unless score random.interval_rand abch.config matches -2147483648..2147483647 run scoreboard players set random.interval_rand abch.config 15


scoreboard players set random.rand abch.default 30
execute unless score random.interval_rand abch.config matches -2147483648..2147483647 run scoreboard players set random.interval_rand abch.config 30

scoreboard players operation random.max abch.default = $total_modifiers abch.toggle
execute unless score random.max abch.config matches -2147483648..2147483647 run scoreboard players operation random.max abch.config = $total_modifiers abch.toggle

scoreboard players set random.chance abch.default 200
execute unless score random.chance abch.config matches -2147483648..2147483647 run scoreboard players set random.chance abch.config 200

scoreboard players set random.reroll abch.default 1
execute unless score random.reroll abch.config matches -2147483648..2147483647 run scoreboard players set random.reroll abch.config 1


#> Difficulty
execute store result score difficulty.global abch.default run difficulty
execute unless score difficulty.global abch.custom matches -2147483648..2147483647 run scoreboard players operation difficulty.global abch.config = difficulty.global abch.default

#> Modifiers
function abchc:modifiers/degradation/config
function abchc:modifiers/herbivore/config
function abchc:modifiers/carnivore/config