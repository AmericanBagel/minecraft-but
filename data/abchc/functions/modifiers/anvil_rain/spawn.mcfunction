summon armor_stand ~ ~ ~ {CustomName:'{"text":"abch.anvilRain"}',Invisible:1b}
spreadplayers ~ ~ 1 50 false @e[type=armor_stand,name="abch.anvilRain"]

execute store result score @e[type=armor_stand,name="abch.anvilRain"] abch.anvilRand run loot spawn ~ ~-1000 ~ loot abchc:1r60

execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 1 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[0.55,0.0,0.0]}
execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 2 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[0.0,0.0,0.55]}
execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 3 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[-0.55,0.0,0.0]}
execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 4 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[0.0,0.0,-0.55]}
execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 5 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[0.55,0.0,0.55]}
execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 6 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[-0.55,0.0,0.55]}
execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 7 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[0.55,0.0,-0.55]}
execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 8 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[-0.55,0.0,-0.55]}
execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 9 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[0.0,0.0,0.0]}
execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 10 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[0.0,0.0,0.0]}
execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 11 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[0.0,0.0,0.0]}
execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 12 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[0.0,0.0,0.0]}

execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 13 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[0.4,0.0,0.0]}
execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 14 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[0.0,0.0,0.4]}
execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 15 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[-0.4,0.0,0.0]}
execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 16 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[0.0,0.0,-0.4]}
execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 17 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[0.4,0.0,0.4]}
execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 18 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[-0.4,0.0,0.4]}
execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 19 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[0.4,0.0,-0.4]}
execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 20 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[-0.4,0.0,-0.4]}
execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 21 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[0.0,0.0,0.0]}
execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 22 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[0.0,0.0,0.0]}
execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 23 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[0.0,0.0,0.0]}
execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 24 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[0.0,0.0,0.0]}

execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 25 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[0.6,0.0,0.0]}
execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 26 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[0.0,0.0,0.6]}
execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 27 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[-0.6,0.0,0.0]}
execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 28 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[0.0,0.0,-0.6]}
execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 29 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[0.6,0.0,0.6]}
execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 30 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[-0.6,0.0,0.6]}
execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 31 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[0.6,0.0,-0.6]}
execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 32 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[-0.6,0.0,-0.6]}
execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 33 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[0.0,0.0,0.0]}
execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 34 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[0.0,0.0,0.0]}
execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 35 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[0.0,0.0,0.0]}
execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 36 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[0.0,0.0,0.0]}

execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 37 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[0.45,0.0,0.0]}
execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 38 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[0.0,0.0,0.45]}
execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 39 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[-0.45,0.0,0.0]}
execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 40 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[0.0,0.0,-0.45]}
execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 41 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[0.45,0.0,0.45]}
execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 42 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[-0.45,0.0,0.45]}
execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 43 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[0.45,0.0,-0.45]}
execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 44 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[-0.45,0.0,-0.45]}
execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 45 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[0.0,0.0,0.0]}
execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 46 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[0.0,0.0,0.0]}
execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 47 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[0.0,0.0,0.0]}
execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 48 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[0.0,0.0,0.0]}

execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 49 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[0.55,0.0,0.0]}
execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 50 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[0.0,0.0,0.55]}
execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 51 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[-0.55,0.0,0.0]}
execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 52 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[0.0,0.0,-0.55]}
execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 53 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[0.55,0.0,0.55]}
execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 54 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[-0.55,0.0,0.55]}
execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 55 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[0.55,0.0,-0.55]}
execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 56 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[-0.55,0.0,-0.55]}
execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 57 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[0.0,0.0,0.0]}
execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 58 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[0.0,0.0,0.0]}
execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 59 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[0.0,0.0,0.0]}
execute as @e[type=armor_stand,name="abch.anvilRain"] at @s if score @s abch.anvilRand matches 60 run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:-999999,Motion:[0.0,0.0,0.0]}

execute as @e[type=armor_stand,name="abch.anvilRain"] at @s run kill @s