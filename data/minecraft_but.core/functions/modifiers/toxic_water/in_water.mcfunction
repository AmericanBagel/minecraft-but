#> minecraft_but.core:modifiers/toxic_water/in_water
# Commands to run for players in water
# Includes warnings and effects
# @within minecraft_but.core:modifiers/toxic_water/main
# @context players outside water

#> Effects based on difficulty
execute if score @s minecraft_but.toxic_water.timer matches 2.. if score difficulty.toxic_water minecraft_but.config matches 0 run effect give @s poison 3 1 true
execute if score @s minecraft_but.toxic_water.timer matches 2.. unless score difficulty.toxic_water minecraft_but.config matches 0 unless score difficulty.toxic_water minecraft_but.config matches 2..3 run effect give @s wither 2 0 true
execute if score @s minecraft_but.toxic_water.timer matches 2.. if score difficulty.toxic_water minecraft_but.config matches 2 run effect give @s instant_damage 1 0 true
execute if score @s minecraft_but.toxic_water.timer matches 20.. if score difficulty.toxic_water minecraft_but.config matches 3 run kill @s

#> Get tick number of second for warning text and danger tone
scoreboard players operation $tick minecraft_but.toxic_water = @s minecraft_but.toxic_water.timer
scoreboard players operation $tick minecraft_but.toxic_water %= #20 minecraft_but.math

#> Warning text
#execute unless predicate minecraft_but.core:raining run title @s actionbar {"text":"Get back in the water!","color":"red","bold":true}
#execute if predicate minecraft_but.core:raining run title @s actionbar {"text":"Get back in water or under rain!","color":"red","bold":true}

execute unless score toxic_water.warning minecraft_but.config matches 0 unless predicate minecraft_but.core:raining run function minecraft_but.core:modifiers/toxic_water/water_warning
execute unless score toxic_water.warning minecraft_but.config matches 0 unless score toxic_water.rain minecraft_but.config matches 0 if predicate minecraft_but.core:raining run function minecraft_but.core:modifiers/toxic_water/rain_warning
execute if score toxic_water.rain minecraft_but.config matches 0 run function minecraft_but.core:modifiers/toxic_water/water_warning

title @s times 0 1 1

#> Danger tone
execute unless score toxic_water.sfx minecraft_but.config matches 0 if score $tick minecraft_but.toxic_water matches 8.. run function minecraft_but.core:modifiers/toxic_water/warning_sound
execute if score @s minecraft_but.toxic_water.timer matches ..0 run scoreboard players set @s minecraft_but.toxic_water.timer 1

# Increase timer
scoreboard players add @s minecraft_but.toxic_water.timer 1