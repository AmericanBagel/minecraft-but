#> abchc:modifiers/degradation/load
# @within abchc:modifiers/load

execute unless score degradation.speed abch.config matches 0..1 run scoreboard players set degradation.speed abch.config 1

scoreboard objectives add abch.degradation dummy