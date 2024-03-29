#> minecraft_but.core:modifiers/toxic_water/in_rain
# Commands to run for players in rain
# Includes warnings and effects
# @within minecraft_but.core:modifiers/toxic_water/main
# @context players outside water


scoreboard players operation $3_secs minecraft_but.toxic_water = @s minecraft_but.toxic_water.timer
scoreboard players operation $3_secs minecraft_but.toxic_water %= #40 minecraft_but.math

#> Effects based on difficulty
execute if score @s minecraft_but.toxic_water.timer matches 15.. if score difficulty.toxic_water minecraft_but.config matches 0 run effect give @s poison 3 1 true
execute if score @s minecraft_but.toxic_water.timer matches 15.. unless score difficulty.toxic_water minecraft_but.config matches 0 unless score difficulty.toxic_water minecraft_but.config matches 2..3 run damage @s 2 on_fire
execute if score $3_secs minecraft_but.toxic_water matches 1 if score difficulty.toxic_water minecraft_but.config matches 2 run damage @s 4 on_fire
execute if score @s minecraft_but.toxic_water.timer matches 60.. if score difficulty.toxic_water minecraft_but.config matches 3 run kill @s

#> Get tick number of second for warning text and danger tone
scoreboard players operation $tick minecraft_but.toxic_water = @s minecraft_but.toxic_water.timer
scoreboard players operation $tick minecraft_but.toxic_water %= #20 minecraft_but.math

#> Warning text
#execute unless predicate minecraft_but.core:raining run title @s actionbar {"text":"Get back in the water!","color":"red","bold":true}
#execute if predicate minecraft_but.core:raining run title @s actionbar {"text":"Get back in water or under rain!","color":"red","bold":true}

function minecraft_but.core:modifiers/toxic_water/rain_warning

title @s times 0 1 1

#> Danger tone
execute unless score toxic_water.sfx minecraft_but.config matches 0 if score $tick minecraft_but.toxic_water matches 8.. run function minecraft_but.core:modifiers/toxic_water/warning_sound
execute if score @s minecraft_but.toxic_water.timer matches ..0 run scoreboard players set @s minecraft_but.toxic_water.timer 1

# Increase timer
scoreboard players add @s minecraft_but.toxic_water.timer 1