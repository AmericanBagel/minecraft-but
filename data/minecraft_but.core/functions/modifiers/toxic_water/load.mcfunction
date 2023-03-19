#> minecraft_but.coreraft_but.core:modifiers/toxic_water/load
# Load function for "toxic_water" modifier
# Manage scoreboards and configs
# @within minecraft_but.coreraft_but.core:modifiers/load
# @context root

#> Timer to play sound
scoreboard objectives add minecraft_but.toxic_water.timer dummy
scoreboard objectives add minecraft_but.toxic_water.deaths deathCount
scoreboard objectives add minecraft_but.toxic_water dummy

#> Configs
# If difficulty isn't set, default to global difficulty
execute unless score difficulty.toxic_water minecraft_but.config matches -2147483648..2147483647 run scoreboard players operation difficulty.toxic_water minecraft_but.config = difficulty.global minecraft_but.config
scoreboard players operation difficulty.toxic_water minecraft_but.default = difficulty.global minecraft_but.config

# Rain mercy
scoreboard players set toxic_water.rain minecraft_but.default 1
execute unless score toxic_water.rain minecraft_but.config matches 0..1 run scoreboard players set toxic_water.rain minecraft_but.config 1

# Warning message in actionbar
scoreboard players set toxic_water.warning minecraft_but.default 1
execute unless score toxic_water.warning minecraft_but.config matches 0..1 run scoreboard players set toxic_water.rain minecraft_but.config 1

# Warning sound
scoreboard players set toxic_water.sfx minecraft_but.default 1
execute unless score toxic_water.sfx minecraft_but.config matches 0..1 run scoreboard players set toxic_water.rain minecraft_but.config 1