summon armor_stand ~ ~ ~ {CustomName: '{"text":"abch.tntRain"}', Invisible: 1b}
spreadplayers ~ ~ 1 50 false @e[ type=armor_stand, name="abch.tntRain" ]

scoreboard players set $min random 1
scoreboard players set in60 abch.rng.math 60
function random:uniform
scoreboard players operation @e[ type=armor_stand, name="abch.tntRain" ] abch.tntRand = $out random

execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 1 run summon tnt ~ ~15 ~ {Fuse: 80s, Motion: [ 0.55d, 0.0d, 0.0d ]}
execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 2 run summon tnt ~ ~15 ~ {Fuse: 80s, Motion: [ 0.0d, 0.0d, 0.55d ]}
execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 3 run summon tnt ~ ~15 ~ {Fuse: 80s, Motion: [ -0.55d, 0.0d, 0.0d ]}
execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 4 run summon tnt ~ ~15 ~ {Fuse: 80s, Motion: [ 0.0d, 0.0d, -0.55d ]}
execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 5 run summon tnt ~ ~15 ~ {Fuse: 80s, Motion: [ 0.55d, 0.0d, 0.55d ]}
execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 6 run summon tnt ~ ~15 ~ {Fuse: 80s, Motion: [ -0.55d, 0.0d, 0.55d ]}
execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 7 run summon tnt ~ ~15 ~ {Fuse: 80s, Motion: [ 0.55d, 0.0d, -0.55d ]}
execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 8 run summon tnt ~ ~15 ~ {Fuse: 80s, Motion: [ -0.55d, 0.0d, -0.55d ]}
execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 9 run summon tnt ~ ~15 ~ {Fuse: 80s, Motion: [ 0.0d, 0.0d, 0.0d ]}
execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 10 run summon tnt ~ ~15 ~ {Fuse: 80s, Motion: [ 0.0d, 0.0d, 0.0d ]}
execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 11 run summon tnt ~ ~15 ~ {Fuse: 80s, Motion: [ 0.0d, 0.0d, 0.0d ]}
execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 12 run summon tnt ~ ~15 ~ {Fuse: 80s, Motion: [ 0.0d, 0.0d, 0.0d ]}

execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 13 run summon tnt ~ ~14 ~ {Fuse: 80s, Motion: [ 0.4d, 0.0d, 0.0d ]}
execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 14 run summon tnt ~ ~14 ~ {Fuse: 80s, Motion: [ 0.0d, 0.0d, 0.4d ]}
execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 15 run summon tnt ~ ~14 ~ {Fuse: 80s, Motion: [ -0.4d, 0.0d, 0.0d ]}
execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 16 run summon tnt ~ ~14 ~ {Fuse: 80s, Motion: [ 0.0d, 0.0d, -0.4d ]}
execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 17 run summon tnt ~ ~14 ~ {Fuse: 80s, Motion: [ 0.4d, 0.0d, 0.4d ]}
execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 18 run summon tnt ~ ~14 ~ {Fuse: 80s, Motion: [ -0.4d, 0.0d, 0.4d ]}
execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 19 run summon tnt ~ ~14 ~ {Fuse: 80s, Motion: [ 0.4d, 0.0d, -0.4d ]}
execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 20 run summon tnt ~ ~14 ~ {Fuse: 80s, Motion: [ -0.4d, 0.0d, -0.4d ]}
execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 21 run summon tnt ~ ~14 ~ {Fuse: 80s, Motion: [ 0.0d, 0.0d, 0.0d ]}
execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 22 run summon tnt ~ ~14 ~ {Fuse: 80s, Motion: [ 0.0d, 0.0d, 0.0d ]}
execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 23 run summon tnt ~ ~14 ~ {Fuse: 80s, Motion: [ 0.0d, 0.0d, 0.0d ]}
execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 24 run summon tnt ~ ~14 ~ {Fuse: 80s, Motion: [ 0.0d, 0.0d, 0.0d ]}

execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 25 run summon tnt ~ ~13 ~ {Fuse: 80s, Motion: [ 0.6d, 0.0d, 0.0d ]}
execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 26 run summon tnt ~ ~13 ~ {Fuse: 80s, Motion: [ 0.0d, 0.0d, 0.6d ]}
execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 27 run summon tnt ~ ~13 ~ {Fuse: 80s, Motion: [ -0.6d, 0.0d, 0.0d ]}
execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 28 run summon tnt ~ ~13 ~ {Fuse: 80s, Motion: [ 0.0d, 0.0d, -0.6d ]}
execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 29 run summon tnt ~ ~13 ~ {Fuse: 80s, Motion: [ 0.6d, 0.0d, 0.6d ]}
execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 30 run summon tnt ~ ~13 ~ {Fuse: 80s, Motion: [ -0.6d, 0.0d, 0.6d ]}
execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 31 run summon tnt ~ ~13 ~ {Fuse: 80s, Motion: [ 0.6d, 0.0d, -0.6d ]}
execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 32 run summon tnt ~ ~13 ~ {Fuse: 80s, Motion: [ -0.6d, 0.0d, -0.6d ]}
execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 33 run summon tnt ~ ~13 ~ {Fuse: 80s, Motion: [ 0.0d, 0.0d, 0.0d ]}
execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 34 run summon tnt ~ ~13 ~ {Fuse: 80s, Motion: [ 0.0d, 0.0d, 0.0d ]}
execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 35 run summon tnt ~ ~13 ~ {Fuse: 80s, Motion: [ 0.0d, 0.0d, 0.0d ]}
execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 36 run summon tnt ~ ~13 ~ {Fuse: 80s, Motion: [ 0.0d, 0.0d, 0.0d ]}

execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 37 run summon tnt ~ ~12 ~ {Fuse: 80s, Motion: [ 0.45d, 0.0d, 0.0d ]}
execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 38 run summon tnt ~ ~12 ~ {Fuse: 80s, Motion: [ 0.0d, 0.0d, 0.45d ]}
execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 39 run summon tnt ~ ~12 ~ {Fuse: 80s, Motion: [ -0.45d, 0.0d, 0.0d ]}
execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 40 run summon tnt ~ ~12 ~ {Fuse: 80s, Motion: [ 0.0d, 0.0d, -0.45d ]}
execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 41 run summon tnt ~ ~12 ~ {Fuse: 80s, Motion: [ 0.45d, 0.0d, 0.45d ]}
execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 42 run summon tnt ~ ~12 ~ {Fuse: 80s, Motion: [ -0.45d, 0.0d, 0.45d ]}
execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 43 run summon tnt ~ ~12 ~ {Fuse: 80s, Motion: [ 0.45d, 0.0d, -0.45d ]}
execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 44 run summon tnt ~ ~12 ~ {Fuse: 80s, Motion: [ -0.45d, 0.0d, -0.45d ]}
execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 45 run summon tnt ~ ~12 ~ {Fuse: 80s, Motion: [ 0.0d, 0.0d, 0.0d ]}
execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 46 run summon tnt ~ ~12 ~ {Fuse: 80s, Motion: [ 0.0d, 0.0d, 0.0d ]}
execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 47 run summon tnt ~ ~12 ~ {Fuse: 80s, Motion: [ 0.0d, 0.0d, 0.0d ]}
execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 48 run summon tnt ~ ~12 ~ {Fuse: 80s, Motion: [ 0.0d, 0.0d, 0.0d ]}

execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 49 run summon tnt ~ ~11 ~ {Fuse: 80s, Motion: [ 0.55d, 0.0d, 0.0d ]}
execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 50 run summon tnt ~ ~11 ~ {Fuse: 80s, Motion: [ 0.0d, 0.0d, 0.55d ]}
execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 51 run summon tnt ~ ~11 ~ {Fuse: 80s, Motion: [ -0.55d, 0.0d, 0.0d ]}
execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 52 run summon tnt ~ ~11 ~ {Fuse: 80s, Motion: [ 0.0d, 0.0d, -0.55d ]}
execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 53 run summon tnt ~ ~11 ~ {Fuse: 80s, Motion: [ 0.55d, 0.0d, 0.55d ]}
execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 54 run summon tnt ~ ~11 ~ {Fuse: 80s, Motion: [ -0.55d, 0.0d, 0.55d ]}
execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 55 run summon tnt ~ ~11 ~ {Fuse: 80s, Motion: [ 0.55d, 0.0d, -0.55d ]}
execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 56 run summon tnt ~ ~11 ~ {Fuse: 80s, Motion: [ -0.55d, 0.0d, -0.55d ]}
execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 57 run summon tnt ~ ~11 ~ {Fuse: 80s, Motion: [ 0.0d, 0.0d, 0.0d ]}
execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 58 run summon tnt ~ ~11 ~ {Fuse: 80s, Motion: [ 0.0d, 0.0d, 0.0d ]}
execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 59 run summon tnt ~ ~11 ~ {Fuse: 80s, Motion: [ 0.0d, 0.0d, 0.0d ]}
execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s if score @s abch.tntRand matches 60 run summon tnt ~ ~11 ~ {Fuse: 80s, Motion: [ 0.0d, 0.0d, 0.0d ]}

execute as @e[ type=armor_stand, name="abch.tntRain" ] at @s run kill @s