scoreboard players reset @a[tag=abch.blacklist] abch.jump
execute as @a[tag=!abch.blacklist,scores={abch.jump=1..}] at @s run gamerule showDeathMessages false
execute as @a[tag=!abch.blacklist,scores={abch.jump=1..}] at @s run tellraw @a [{"selector":"@s"},{"text":" experienced patellar fracture from jumping."}]
execute as @a[tag=!abch.blacklist,scores={abch.jump=1..}] at @s run kill @s
execute as @a[tag=!abch.blacklist,scores={abch.jump=1..}] at @s run gamerule showDeathMessages true
scoreboard players reset @a abch.jump