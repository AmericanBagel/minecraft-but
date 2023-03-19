execute as @e[ type=#minecraft_but.core:mobs, tag=!global.ignore ] at @s if predicate minecraft_but.core:0002pct run data merge entity @s {Motion: [ 0.0d, 3.0d, 0.0d ]}
execute as @e[ type=#minecraft_but.core:mobs, tag=!global.ignore ] at @s if predicate minecraft_but.core:0002pct run data merge entity @s {Motion: [ 0.0d, 2.0d, 0.0d ]}
execute as @e[ type=#minecraft_but.core:mobs, tag=!global.ignore ] at @s if predicate minecraft_but.core:0002pct run data merge entity @s {Motion: [ 0.0d, 1.0d, 0.0d ]}
execute as @e[ type=#minecraft_but.core:mobs, tag=!global.ignore ] at @s if predicate minecraft_but.core:0001pct run data merge entity @s {Motion: [ 0.0d, 0.75d, 0.0d ]}
execute as @e[ type=#minecraft_but.core:mobs, tag=!global.ignore ] at @s if predicate minecraft_but.core:0001pct run data merge entity @s {Motion: [ 0.0d, 0.5d, 0.0d ]}

scoreboard players reset @e minecraft_but.yeet