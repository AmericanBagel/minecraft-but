#> minecraft_but.coreraft_but.core:modifiers/degradation/config
# @within minecraft_but.coreraft_but.core:modifiers/config
execute unless score degradation.speed minecraft_but.config matches -2147483648..2147483647 run scoreboard players operation degradation.speed minecraft_but.config = degradation.speed minecraft_but.default