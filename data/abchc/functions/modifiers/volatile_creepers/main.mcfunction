execute as @e[ type=creeper ] at @s if predicate abchc:0001pct run data merge entity @s {ignited: 1b}
execute as @e[ type=creeper, nbt={HurtTime: 10s} ] run data modify entity @s ignited set value 1