#> minecraft_but.core:modifiers/explosive_phantoms/main
execute as @e[type=phantom,scores={minecraft_but.explosive_phantoms.interval=1..}] run scoreboard players remove @s minecraft_but.explosive_phantoms.interval 1

execute as @e[ type=phantom, tag=!global.ignore, tag=!minecraft_but.blacklist, tag=!minecraft_but.explosive_phantoms.blacklist ] at @s if entity @a[tag=!minecraft_but.blacklist, tag=!global.ignore, distance=..2.5, gamemode=!creative, gamemode=!spectator ] unless score @s minecraft_but.explosive_phantoms.interval matches 1.. run function minecraft_but.core:modifiers/explosive_phantoms/explode

execute as @e[ type=phantom, tag=!global.ignore ] at @s if entity @a[ tag=!minecraft_but.blacklist, tag=!global.ignore, distance=..2.5, gamemode=!creative, gamemode=!spectator ] run summon creeper ~ ~ ~ {ExplosionRadius: 3b, Fuse: 0, Tags: [ "global.ignore", "minecraft_but", "minecraft_but.explosive_phantoms" ]}
execute as @e[ type=creeper, tag=minecraft_but.explosive_phantoms ] at @s store result entity @s ExplosionRadius byte 1 run scoreboard players get explosive_phantoms.radius minecraft_but.config