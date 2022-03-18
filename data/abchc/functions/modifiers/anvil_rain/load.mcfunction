#> abchc:modifiers/anvil_rain/load
# Load function for anvil rain modifier
# which sets up scoreboards, defaults, and configs
# @within abchc:modifiers/load
# @context root

## Anvil Rain
# anvil_rain.sky - Summon anvils from the sky (Y255)? - BOOLEAN - DEF 1
execute unless score anvil_rain.sky abch.config matches 0..1 run scoreboard players set anvil_rain.sky abch.config 1

# anvil_rain.relative - Summon anvils above players? (+~15)? - BOOLEAN - DEF 1
execute unless score anvil_rain.relative abch.config matches 0..1 run scoreboard players set anvil_rain.relative abch.config 1

# anvil_rain.keep - Keep anvils? - BOOLEAN - DEF 0

# anvil_rain.chance - Anvil spawn rate - INTEGER - DEF 1
execute unless score anvil_rain.chance abch.config matches 0.. run scoreboard players set anvil_rain.chance abch.config 1

scoreboard objectives add abch.anvil_rain dummy