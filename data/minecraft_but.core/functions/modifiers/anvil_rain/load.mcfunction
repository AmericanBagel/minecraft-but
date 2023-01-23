#> minecraft_but.core:modifiers/anvil_rain/load
# Load function for anvil rain modifier
# which sets up scoreboards, defaults, and configs
# @within minecraft_but.core:modifiers/load
# @context root

## Anvil Rain
# anvil_rain.sky - Summon anvils from the sky (Y319)? - BOOLEAN - DEF 1
execute unless score anvil_rain.sky minecraft_but.config matches 0..1 run scoreboard players set anvil_rain.sky minecraft_but.config 1

# anvil_rain.relative - Summon anvils above players? (+~15)? - BOOLEAN - DEF 1
execute unless score anvil_rain.relative minecraft_but.config matches 0..1 run scoreboard players set anvil_rain.relative minecraft_but.config 1

# anvil_rain.keep - Keep anvils? - BOOLEAN - DEF 0

# anvil_rain.chance - Anvil spawn rate - INTEGER - DEF 1
execute unless score anvil_rain.chance minecraft_but.config matches 0.. run scoreboard players set anvil_rain.chance minecraft_but.config 1

scoreboard objectives add minecraft_but.anvil_rain dummy