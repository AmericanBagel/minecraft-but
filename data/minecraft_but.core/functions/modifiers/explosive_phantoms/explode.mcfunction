#> minecraft_but.core:modifiers/explosive_phantoms/explode
# Get second interval
scoreboard players operation @s minecraft_but.explosive_phantoms.interval = explosive_phantoms.interval minecraft_but.config

# Convert seconds to ticks
scoreboard players operation @s minecraft_but.explosive_phantoms.interval *= #20 minecraft_but.math

# Create explosion
summon creeper ~ ~ ~ {ExplosionRadius: 3b, Fuse: 0, Tags: [ "global.ignore", "minecraft_but", "minecraft_but.explosive_phantoms" ]}

execute if score explosive_phantoms.kill minecraft_but.config matches 1 run kill @s