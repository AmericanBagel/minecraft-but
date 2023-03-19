#> abchc:modifiers/degradation/config
# @within abchc:modifiers/config
execute unless score degradation.speed abch.config matches -2147483648..2147483647 run scoreboard players operation degradation.speed abch.config = degradation.speed abch.default