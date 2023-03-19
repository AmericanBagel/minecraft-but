#> abchc:modifiers/tnt_rain/replace_tnt
# Replace TNT with griefer to respect mobGriefing
# @context destroy marker
# @within abchc:modifiers/tnt_rain/mark_destroy

summon creeper ~ ~ ~ {Fuse:1s,ignited:1b,ExplosionRadius:3b,Tags:["abch.tnt_rain.creeper","abch","abch.tnt_rain","global.ignore"]}
execute if score tnt_rain.radius abch.config matches -2147483648..2147483647 as @e[tag=abch.tnt_rain.creeper] store result entity @s ExplosionRadius byte 1 run scoreboard players get tnt_rain.radius abch.config
kill @s