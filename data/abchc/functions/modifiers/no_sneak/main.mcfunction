scoreboard players reset @a[tag=abch_blacklist] abch_sneak
execute as @a[tag=!abch_blacklist,scores={abch_sneak=1..}] at @s run gamerule showDeathMessages false
execute as @a[tag=!abch_blacklist,scores={abch_sneak=1..}] at @s run tellraw @a [{"selector":"@s"},{"text":" sneaked out of this plane of existence."}]
execute as @a[tag=!abch_blacklist,scores={abch_sneak=1..}] at @s run kill @s
execute as @a[tag=!abch_blacklist,scores={abch_sneak=1..}] at @s run gamerule showDeathMessages true
scoreboard players reset @s abch_sneak