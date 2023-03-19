scoreboard players set #hit minecraft_but.explosive_sight.raycast 1
summon creeper ~ ~ ~ {Silent: 1b, Fuse: 0, ignited: 1b, ExplosionRadius: 3b, Tags: [ "minecraft_but", "minecraft_but.explosive_sight.creeper" ]}
execute if score explosive_sight.radius minecraft_but.config matches -2147483648..2147483647 as @e[ tag=minecraft_but.explosive_sight.creeper ] store result entity @s ExplosionRadius byte 1 run scoreboard players get explosive_sight.radius minecraft_but.config
execute unless score explosive_sight.radius minecraft_but.config matches -2147483648..2147483647 as @e[ tag=minecraft_but.explosive_sight.creeper ] store result entity @s ExplosionRadius byte 1 run scoreboard players get explosive_sight.radius minecraft_but.default

execute if score #distance minecraft_but.explosive_sight.raycast matches 100.. run particle explosion ~ ~ ~ 1 1 1 1 5 force