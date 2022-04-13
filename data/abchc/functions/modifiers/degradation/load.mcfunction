#> abchc:modifiers/degradation/load
# @within abchc:modifiers/load

scoreboard players set degradation.speed abch.default 10

execute unless score degradation.speed abch.config matches -2147483648..2147483647 run scoreboard players operation degradation.speed abch.config = degradation.speed abch.default

scoreboard objectives add abch.degradation dummy