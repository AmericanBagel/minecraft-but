#> minecraft_but.core:modifiers/creeper_mobs/explode
# Explode mob
# @within minecraft_but.core:modifiers/creeper_mobs/main
# @context exploding mob

#> Summon explosion
summon creeper ~ ~ ~ {ExplosionRadius:3b,Fuse:0s,Invulnerable:1b,NoGravity:1b,NoAI:1b,Tags:["minecraft_but.creeper_mobs.explosion","global.ignore"]}

#> Apply explosion radius to creeper
# If configs are set, use configs
execute if score creeper_mobs.radius minecraft_but.config matches -2147483648..2147483647 as @e[tag=minecraft_but.creeper_mobs.explosion] at @s store result entity @s ExplosionRadius byte 1 run scoreboard players get creeper_mobs.radius minecraft_but.config
# Else fall back to defaults
execute unless score creeper_mobs.radius minecraft_but.config matches -2147483648..2147483647 as @e[tag=minecraft_but.creeper_mobs.explosion] at @s store result entity @s ExplosionRadius byte 1 run scoreboard players get creeper_mobs.radius minecraft_but.default

#> Kill mob
kill @s