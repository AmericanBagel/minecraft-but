#> abchc:modifiers/creeper_mobs/run_default
# Run fuse for mobs based on config defaults
# @within abchc:modifiers/creeper_mobs/main

#> For first 15 ticks, depend on player nearby
# type config determines which kinds of mobs are selected
# 1 = hostile
# 2 = hostile and neutral
# 3 = all, including passive
execute if score creeper_mobs.type abch.default matches 1 as @e[type=#aestd1:hostile,tag=!global.ignore,tag=!abch.creeper_mobs.ignore,type=!creeper] at @s if entity @a[distance=..2.5,gamemode=!creative,gamemode=!spectator] unless score @s abch.creeper_mobs.fuse matches 15.. run function abchc:modifiers/creeper_mobs/fuse
execute if score creeper_mobs.type abch.default matches 2 as @e[type=#abchc:hostile_and_neutral,tag=!global.ignore,tag=!abch.creeper_mobs.ignore,type=!creeper] at @s if entity @a[distance=..2.5,gamemode=!creative,gamemode=!spectator] unless score @s abch.creeper_mobs.fuse matches 15.. run function abchc:modifiers/creeper_mobs/fuse
execute if score creeper_mobs.type abch.default matches 3 as @e[type=#abchc:mobs,tag=!global.ignore,tag=!abch.creeper_mobs.ignore,type=!creeper] at @s if entity @a[distance=..2.5,gamemode=!creative,gamemode=!spectator] unless score @s abch.creeper_mobs.fuse matches 15.. run function abchc:modifiers/creeper_mobs/fuse

#> Last 15 ticks, fuse increases without player
execute as @e[type=#abchc:mobs,tag=!global.ignore,tag=!abch.creeper_mobs.ignore,type=!creeper] at @s if score @s abch.creeper_mobs.fuse matches 15.. run function abchc:modifiers/creeper_mobs/fuse