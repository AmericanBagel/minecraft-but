execute as @e[ type=#abchc:mobs ] at @s if predicate abchc:0002pct run data merge entity @s {Motion: [ 0.0d, 3.0d, 0.0d ]}
execute as @e[ type=#abchc:mobs ] at @s if predicate abchc:0002pct run data merge entity @s {Motion: [ 0.0d, 2.0d, 0.0d ]}
execute as @e[ type=#abchc:mobs ] at @s if predicate abchc:0002pct run data merge entity @s {Motion: [ 0.0d, 1.0d, 0.0d ]}
execute as @e[ type=#abchc:mobs ] at @s if predicate abchc:0001pct run data merge entity @s {Motion: [ 0.0d, 0.75d, 0.0d ]}
execute as @e[ type=#abchc:mobs ] at @s if predicate abchc:0001pct run data merge entity @s {Motion: [ 0.0d, 0.5d, 0.0d ]}

scoreboard players reset @e abch.yeet