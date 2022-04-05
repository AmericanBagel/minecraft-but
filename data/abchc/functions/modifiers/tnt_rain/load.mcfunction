#> abchc:modifiers/tnt_rain/load
# Load function for tnt rain modifier
# which sets up scoreboards, defaults, and configs
# @within abchc:modifiers/load
# @context root

## tnt Rain
# tnt_rain.sky - Summon tnts from the sky (Y319)? - BOOLEAN - DEF 1
execute unless score tnt_rain.sky abch.config matches 0..1 run scoreboard players set tnt_rain.sky abch.config 1

# tnt_rain.relative - Summon tnts above players? (+~15)? - BOOLEAN - DEF 1
execute unless score tnt_rain.relative abch.config matches 0..1 run scoreboard players set tnt_rain.relative abch.config 1

# tnt_rain.keep - Keep tnts? - BOOLEAN - DEF 0

# tnt_rain.chance - tnt spawn rate - INTEGER - DEF 1
execute unless score tnt_rain.chance abch.config matches 0.. run scoreboard players set tnt_rain.chance abch.config 1

# tnt_rain.chance - tnt spawn rate - INTEGER - DEF 1
execute unless score tnt_rain.chance abch.config matches 0.. run scoreboard players set tnt_rain.chance abch.config 1

scoreboard objectives add abch.tnt_rain dummy