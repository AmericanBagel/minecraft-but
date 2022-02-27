execute if entity @a[advancements={abchc:fall_dmg=true},scores={abch.fall=1..}] run gamerule showDeathMessages false
execute as @a[advancements={abchc:fall_dmg=true},scores={abch.fall=1..}] at @s run tellraw @a[tag=!blacklist,tag=!global.ignore] [{"selector":"@s"},{"text":" fell from a high place."}]
execute as @a[advancements={abchc:fall_dmg=true},scores={abch.fall=1..}] at @s run kill @s
execute as @a[advancements={abchc:fall_dmg=true},scores={abch.fall=1..}] at @s run advancement revoke @s only abchc:fall_dmg
execute if entity @a[advancements={abchc:fall_dmg=true},scores={abch.fall=1..}] run gamerule showDeathMessages false
scoreboard players reset @a[tag=!blacklist,tag=!global.ignore] abch.fall