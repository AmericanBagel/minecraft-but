#> abchc:modifiers/config
# Update configs for modifiers
# @within abchc:load
# @context root

#> Schedule config in one second
schedule function abchc:modifiers/config 10t

#> Difficulty
execute store result score difficulty.global abch.default run difficulty
execute unless score difficulty.global abch.custom matches -2147483648..2147483647 run scoreboard players operation difficulty.global abch.config = difficulty.global abch.default

#> Modifiers
function abchc:modifiers/degradation/config
function abchc:modifiers/herbivore/config
function abchc:modifiers/carnivore/config