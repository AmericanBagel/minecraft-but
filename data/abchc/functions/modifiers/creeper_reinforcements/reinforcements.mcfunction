summon creeper ~6 ~ ~-8 {Tags:["abch.crRf"]}
summon creeper ~8 ~ ~-6 {Tags:["abch.crRf"]}
summon creeper ~9 ~ ~-4 {Tags:["abch.crRf"]}
summon creeper ~10 ~ ~-2 {Tags:["abch.crRf"]}
summon creeper ~10 ~ ~ {Silent:1b,Glowing:1b,Health:40f,ExplosionRadius:5b,Fuse:50,Attributes:[{Name:"generic.max_health",Base:40},{Name:"generic.movement_speed",Base:.2},{Name:"generic.armor",Base:10},{Name:"generic.armor_toughness",Base:10}]}
summon creeper ~10 ~ ~2 {Tags:["abch.crRf"]}
summon creeper ~9 ~ ~4 {Tags:["abch.crRf"]}
summon creeper ~8 ~ ~6 {Tags:["abch.crRf"]}
summon creeper ~6 ~ ~8 {Tags:["abch.crRf"]}
summon creeper ~-10 ~ ~ {Silent:1b,powered:1b,ExplosionRadius:4b,Fuse:50,Attributes:[{Name:"generic.movement_speed",Base:0.45}]}

execute as @e[type=creeper,tag=abch.crRf,distance=..12] at @s run spreadplayers ~ ~ 1 1 false @s
execute as @e[type=creeper,tag=abch.crRf,distance=..12] at @s run particle minecraft:large_smoke ~ ~ ~ .5 1 .5 .1 100 force