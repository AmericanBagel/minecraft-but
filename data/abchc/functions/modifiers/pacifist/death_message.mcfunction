execute as @a[tag=abch.pacifist.death_message] at @s run tellraw @a [{"selector":"@s"},{"text":" discovered karma"}]
execute as @a[tag=abch.pacifist.death_message] at @s run gamerule showDeathMessages true