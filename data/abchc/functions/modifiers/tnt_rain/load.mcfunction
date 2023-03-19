#> abchc:modifiers/tnt_rain/load
# Load function for tnt rain modifier
# which sets up scoreboards, defaults, and configs
# @within abchc:modifiers/load
# @context root

## tnt Rain
# tnt_rain.sky - Summon TNT from the sky (Y319)? - BOOLEAN - DEF 1
scoreboard players set tnt_rain.sky abch.default 1
execute unless score tnt_rain.sky abch.config matches 0..1 run scoreboard players set tnt_rain.sky abch.config 1

# tnt_rain.relative - Summon TNT above players? (+~15)? - BOOLEAN - DEF 1
scoreboard players set tnt_rain.relative abch.default 1
execute unless score tnt_rain.relative abch.config matches 0..1 run scoreboard players set tnt_rain.relative abch.config 1

# tnt_rain.grief - Should TNT grief? - BOOLEAN - DEF 0
scoreboard players set tnt_rain.grief abch.default 1
execute unless score tnt_rain.grief abch.config matches 0..1 run scoreboard players set tnt_rain.grief abch.config 1

# tnt_rain.radius - TNT explosion radius - INTEGER - DEF 1
scoreboard players set tnt_rain.radius abch.default 3
execute unless score tnt_rain.radiuse abch.config matches 0.. run scoreboard players set tnt_rain.radius abch.config 3

# tnt_rain.chance - TNT spawn rate - INTEGER - DEF 1
scoreboard players set tnt_rain.chance abch.default 1
execute unless score tnt_rain.chance abch.config matches 0.. run scoreboard players set tnt_rain.chance abch.config 1

scoreboard objectives add abch.tnt_rain dummy