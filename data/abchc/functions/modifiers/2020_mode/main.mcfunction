execute as @a[tag=!blacklist,tag=!global.ignore] at @s if entity @a[distance=0.01..2] run effect give @s minecraft:wither 1 0 true
execute as @a[tag=!blacklist,tag=!global.ignore] at @s if entity @s[distance=0.01..2] run title @s title {"text":"2 meters!","color":"dark_red"}
execute as @a[tag=!blacklist,tag=!global.ignore] at @s if entity @s[distance=0.01..2] run title @s subtitle {"text":"Take proper social distancing measures!","color":"dark_red"}
execute as @a[tag=!blacklist,tag=!global.ignore] at @s if entity @s[distance=0.01..2] run title @s times 0 1 1