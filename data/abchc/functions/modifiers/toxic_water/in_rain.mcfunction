#> abchc:modifiers/toxic_water/in_rain
# Commands to run for players in rain
# Includes warnings and effects
# @within abchc:modifiers/toxic_water/main
# @context players outside water


scoreboard players operation $3_secs abch.toxic_water = @s abch.toxic_water.timer
scoreboard players operation $3_secs abch.toxic_water %= #40 abch.math

#> Effects based on difficulty
execute if score @s abch.toxic_water.timer matches 15.. if score difficulty.toxic_water abch.config matches 0 run effect give @s poison 3 1 true
execute if score @s abch.toxic_water.timer matches 15.. unless score difficulty.toxic_water abch.config matches 0 unless score difficulty.toxic_water abch.config matches 2..3 run effect give @s wither 2 0 true
execute if score $3_secs abch.toxic_water matches 1 if score difficulty.toxic_water abch.config matches 2 run effect give @s instant_damage 5 0 true
execute if score @s abch.toxic_water.timer matches 60.. if score difficulty.toxic_water abch.config matches 3 run kill @s

#> Get tick number of second for warning text and danger tone
scoreboard players operation $tick abch.toxic_water = @s abch.toxic_water.timer
scoreboard players operation $tick abch.toxic_water %= #20 abch.math

#> Warning text
#execute unless predicate abchc:raining run title @s actionbar {"text":"Get back in the water!","color":"red","bold":true}
#execute if predicate abchc:raining run title @s actionbar {"text":"Get back in water or under rain!","color":"red","bold":true}

function abchc:modifiers/toxic_water/rain_warning

title @s times 0 1 1

#> Danger tone
execute unless score toxic_water.sfx abch.config matches 0 if score $tick abch.toxic_water matches 8.. run function abchc:modifiers/toxic_water/warning_sound
execute if score @s abch.toxic_water.timer matches ..0 run scoreboard players set @s abch.toxic_water.timer 1

# Increase timer
scoreboard players add @s abch.toxic_water.timer 1