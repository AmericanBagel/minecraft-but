#> minecraft_but.core:modifiers/tnt_rain/replace_tnt
# Replace TNT with griefer to respect mobGriefing
# @context destroy marker
# @within minecraft_but.core:modifiers/tnt_rain/mark_destroy

summon creeper ~ ~ ~ {Fuse:1s,ignited:1b,ExplosionRadius:3b,Tags:["minecraft_but.tnt_rain.creeper","minecraft_but","minecraft_but.tnt_rain","global.ignore"]}
execute if score tnt_rain.radius minecraft_but.config matches -2147483648..2147483647 as @e[tag=minecraft_but.tnt_rain.creeper] store result entity @s ExplosionRadius byte 1 run scoreboard players get tnt_rain.radius minecraft_but.config
kill @s