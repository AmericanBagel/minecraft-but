#> abchc:modifiers/creeper_mobs/explode
# Explode mob
# @within abchc:modifiers/creeper_mobs/main
# @context exploding mob

#> Summon explosion
summon creeper ~ ~ ~ {ExplosionRadius:3b,Fuse:0s,Invulnerable:1b,NoGravity:1b,NoAI:1b,Tags:["abch.creeper_mobs.explosion","global.ignore"]}

#> Apply explosion radius to creeper
# If configs are set, use configs
execute if score creeper_mobs.radius abch.config matches -2147483648..2147483647 as @e[tag=abch.creeper_mobs.explosion] at @s store result entity @s ExplosionRadius byte 1 run scoreboard players get creeper_mobs.radius abch.config
# Else fall back to defaults
execute unless score creeper_mobs.radius abch.config matches -2147483648..2147483647 as @e[tag=abch.creeper_mobs.explosion] at @s store result entity @s ExplosionRadius byte 1 run scoreboard players get creeper_mobs.radius abch.default

#> Kill mob
kill @s