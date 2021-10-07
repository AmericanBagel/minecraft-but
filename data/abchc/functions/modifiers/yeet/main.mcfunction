execute as @e[type=#abchc:mobs] at @s if predicate abchc:0002pct run data merge entity @s {Motion:[0.0,3.0,0.0]}
execute as @e[type=#abchc:mobs] at @s if predicate abchc:0002pct run data merge entity @s {Motion:[0.0,2.0,0.0]}
execute as @e[type=#abchc:mobs] at @s if predicate abchc:0002pct run data merge entity @s {Motion:[0.0,1.0,0.0]}
execute as @e[type=#abchc:mobs] at @s if predicate abchc:0001pct run data merge entity @s {Motion:[0.0,0.75,0.0]}
execute as @e[type=#abchc:mobs] at @s if predicate abchc:0001pct run data merge entity @s {Motion:[0.0,0.5,0.0]}

scoreboard players reset @e abch.yeet