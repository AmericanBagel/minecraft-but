scoreboard players set #hit abch.explosive_sight.raycast 1
summon creeper ~ ~ ~ {Silent: 1b, Fuse: 0, ignited: 1b, ExplosionRadius: 3b, Tags: [ "abch", "abch.explosive_sight.creeper" ]}
execute if score explosive_sight.radius abch.config matches -2147483648..2147483647 as @e[ tag=abch.explosive_sight.creeper ] store result entity @s ExplosionRadius byte 1 run scoreboard players get explosive_sight.radius abch.config
execute unless score explosive_sight.radius abch.config matches -2147483648..2147483647 as @e[ tag=abch.explosive_sight.creeper ] store result entity @s ExplosionRadius byte 1 run scoreboard players get explosive_sight.radius abch.default