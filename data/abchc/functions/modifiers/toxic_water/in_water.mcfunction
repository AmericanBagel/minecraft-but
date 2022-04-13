#> abchc:modifiers/toxic_water/in_water
# Commands to run for players out of water
# Includes warnings and effects
# @within abchc:modifiers/toxic_water/main
# @context players outside water

#> Effects based on difficulty
execute if score toxic_water.difficulty abch.config matches 0 run effect give @s poison 3 1 true
execute unless score toxic_water.difficulty abch.config matches 0 unless score toxic_water.difficulty abch.config matches 2..3 run effect give @s wither 2 0 true
execute if score toxic_water.difficulty abch.config matches 2 run effect give @s instant_damage 1 0 true
execute if score toxic_water.difficulty abch.config matches 3 run kill @s

#> Warning text
title @s actionbar {"text":"Get out of the water!","color":"red","bold":true}
execute if entity @s[tag=abch.toxic_water.rain] run title @s actionbar {"text":"Get out of the rain!","color":"red","bold":true}
title @s times 0 1 1

#> Danger tone
execute if score @s abch.toxic_water.timer matches ..0 run scoreboard players set @s abch.toxic_water.timer 1

execute if score @s abch.toxic_water.timer matches 1 run playsound block.note_block.didgeridoo master @s ~ ~ ~ 1.5 .66
execute if score @s abch.toxic_water.timer matches 1 run playsound block.note_block.basedrum master @s ~ ~ ~ 5 .66

execute if score @s abch.toxic_water.timer matches 5 run playsound block.note_block.didgeridoo master @s ~ ~ ~ 1.5 .33
execute if score @s abch.toxic_water.timer matches 5 run playsound block.note_block.basedrum master @s ~ ~ ~ 5 .33

execute if score @s abch.toxic_water.timer matches 10 run playsound block.note_block.didgeridoo master @s ~ ~ ~ 1.5 0
execute if score @s abch.toxic_water.timer matches 10 run playsound block.note_block.basedrum master @s ~ ~ ~ 5 0

# Increase timer
scoreboard players add @s abch.toxic_water.timer 1

# Reset timer
scoreboard players reset @s[scores={abch.toxic_water.timer=20..}] abch.toxic_water.timer