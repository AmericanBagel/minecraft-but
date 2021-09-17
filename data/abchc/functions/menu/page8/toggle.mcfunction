execute if entity @s[scores={abch_toggle=1}] run scoreboard players set global abch_toggle 1
execute if entity @s[scores={abch_toggle=0}] run scoreboard players set global abch_toggle 0
scoreboard players reset @s abch_toggle
say toggle 