#> minecraft_but.core:modifiers/creeper_mobs/run_config
# Run fuse for mobs based on config
# @within minecraft_but.core:modifiers/creeper_mobs/main

#> For first 15 ticks, depend on player nearby
# type config determines which kinds of mobs are selected
# 1 = hostile
# 2 = hostile and neutral
# 3 = all, including passive
execute if score creeper_mobs.type minecraft_but.config matches 1 as @e[type=#aestd1:hostile,tag=!global.ignore,tag=!minecraft_but.creeper_mobs.ignore,type=!creeper] at @s if entity @a[distance=..2.5,gamemode=!creative,gamemode=!spectator] unless score @s minecraft_but.creeper_mobs.fuse matches 15.. run function minecraft_but.core:modifiers/creeper_mobs/fuse
execute if score creeper_mobs.type minecraft_but.config matches 2 as @e[type=#minecraft_but.core:hostile_and_neutral,tag=!global.ignore,tag=!minecraft_but.creeper_mobs.ignore,type=!creeper] at @s if entity @a[distance=..2.5,gamemode=!creative,gamemode=!spectator] unless score @s minecraft_but.creeper_mobs.fuse matches 15.. run function minecraft_but.core:modifiers/creeper_mobs/fuse
execute if score creeper_mobs.type minecraft_but.config matches 3 as @e[type=#minecraft_but.core:mobs,tag=!global.ignore,tag=!minecraft_but.creeper_mobs.ignore,type=!creeper] at @s if entity @a[distance=..2.5,gamemode=!creative,gamemode=!spectator] unless score @s minecraft_but.creeper_mobs.fuse matches 15.. run function minecraft_but.core:modifiers/creeper_mobs/fuse

#> Last 15 ticks, fuse increases without player
execute as @e[type=#minecraft_but.core:mobs,tag=!global.ignore,tag=!minecraft_but.creeper_mobs.ignore,type=!creeper] at @s if score @s minecraft_but.creeper_mobs.fuse matches 15.. run function minecraft_but.core:modifiers/creeper_mobs/fuse