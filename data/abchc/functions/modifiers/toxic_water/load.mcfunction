#> abchc:modifiers/toxic_water/load
# Load function for "toxic_water" modifier
# Manage scoreboards and configs
# @within abchc:modifiers/load
# @context root

#> Timer to play sound
scoreboard objectives add abch.toxic_water.timer dummy
scoreboard objectives add abch.toxic_water dummy

#> Configs
# If difficulty isn't set, default to global difficulty
execute unless score toxic_water.difficulty abch.config matches -2147483648..2147483647 run scoreboard players operation toxic_water.difficulty abch.config = difficulty.global abch.config
scoreboard players operation toxic_water.difficulty abch.default = difficulty.global abch.config

# Dolphins grace
execute unless score toxic_water.dolphins_grace abch.config matches 0..1 run scoreboard players set toxic_water.dolphins_grace abch.config 1
execute unless score toxic_water.dolphins_grace abch.config matches 0..1 run scoreboard players set toxic_water.dolphins_grace abch.config 1