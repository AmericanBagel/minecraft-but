#> abchc:modifiers/toxic_water/load
# Load function for "toxic_water" modifier
# Manage scoreboards and configs
# @within abchc:modifiers/load
# @context root

#> Timer to play sound
scoreboard objectives add abch.toxic_water.timer dummy
scoreboard objectives add abch.toxic_water.deaths deathCount
scoreboard objectives add abch.toxic_water dummy

#> Configs
# If difficulty isn't set, default to global difficulty
execute unless score difficulty.toxic_water abch.config matches -2147483648..2147483647 run scoreboard players operation difficulty.toxic_water abch.config = difficulty.global abch.config
scoreboard players operation difficulty.toxic_water abch.default = difficulty.global abch.config

# Rain mercy
scoreboard players set toxic_water.rain abch.default 1
execute unless score toxic_water.rain abch.config matches 0..1 run scoreboard players set toxic_water.rain abch.config 1

# Warning message in actionbar
scoreboard players set toxic_water.warning abch.default 1
execute unless score toxic_water.warning abch.config matches 0..1 run scoreboard players set toxic_water.rain abch.config 1

# Warning sound
scoreboard players set toxic_water.sfx abch.default 1
execute unless score toxic_water.sfx abch.config matches 0..1 run scoreboard players set toxic_water.rain abch.config 1