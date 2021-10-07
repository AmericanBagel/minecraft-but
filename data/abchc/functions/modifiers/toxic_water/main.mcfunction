execute as @a[tag=!abch.blacklist] at @s if block ~ ~ ~ water run effect give @s instant_damage 1 1 true
execute as @a[tag=!abch.blacklist] at @s if block ~ ~1 ~ water run effect give @s instant_damage 1 1 true

execute as @a[tag=!abch.blacklist] at @s if block ~ ~ ~ #abchc:all[waterlogged=true] run effect give @s instant_damage 1 1 true
execute as @a[tag=!abch.blacklist] at @s if block ~ ~1 ~ #abchc:all[waterlogged=true] run effect give @s instant_damage 1 1 true