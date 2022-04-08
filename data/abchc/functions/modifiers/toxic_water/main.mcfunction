execute as @a[ tag=!abch.blacklist ] at @s if block ~ ~ ~ water run function abchc:modifiers/toxic_water/effect
execute as @a[ tag=!abch.blacklist ] at @s if block ~ ~1 ~ water run function abchc:modifiers/toxic_water/effect

execute as @a[ tag=!abch.blacklist ] at @s if block ~ ~ ~ #abchc:all[ waterlogged=true ] run function abchc:modifiers/toxic_water/effect
execute as @a[ tag=!abch.blacklist ] at @s if block ~ ~1 ~ #abchc:all[ waterlogged=true ] run function abchc:modifiers/toxic_water/effect