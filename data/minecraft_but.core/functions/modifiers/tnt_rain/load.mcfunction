#> minecraft_but.coreraft_but.core:modifiers/tnt_rain/load
# Load function for tnt rain modifier
# which sets up scoreboards, defaults, and configs
# @within minecraft_but.coreraft_but.core:modifiers/load
# @context root

## tnt Rain
# tnt_rain.sky - Summon TNT from the sky (Y319)? - BOOLEAN - DEF 1
scoreboard players set tnt_rain.sky minecraft_but.default 1
execute unless score tnt_rain.sky minecraft_but.config matches 0..1 run scoreboard players set tnt_rain.sky minecraft_but.config 1

# tnt_rain.relative - Summon TNT above players? (+~15)? - BOOLEAN - DEF 1
scoreboard players set tnt_rain.relative minecraft_but.default 1
execute unless score tnt_rain.relative minecraft_but.config matches 0..1 run scoreboard players set tnt_rain.relative minecraft_but.config 1

# tnt_rain.grief - Should TNT grief? - BOOLEAN - DEF 0
scoreboard players set tnt_rain.grief minecraft_but.default 1
execute unless score tnt_rain.grief minecraft_but.config matches 0..1 run scoreboard players set tnt_rain.grief minecraft_but.config 1

# tnt_rain.radius - TNT explosion radius - INTEGER - DEF 1
scoreboard players set tnt_rain.radius minecraft_but.default 3
execute unless score tnt_rain.radiuse minecraft_but.config matches 0.. run scoreboard players set tnt_rain.radius minecraft_but.config 3

# tnt_rain.chance - TNT spawn rate - INTEGER - DEF 1
scoreboard players set tnt_rain.chance minecraft_but.default 1
execute unless score tnt_rain.chance minecraft_but.config matches 0.. run scoreboard players set tnt_rain.chance minecraft_but.config 1

scoreboard objectives add minecraft_but.tnt_rain dummy