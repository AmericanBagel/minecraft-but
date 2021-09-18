execute store result score @s abch_siEffect run loot spawn ~ -1000 ~ loot abchc:1r29

execute if score @s abch_siEffect matches 1 run effect give @s speed 60 6 false
execute if score @s abch_siEffect matches 2 run effect give @s slowness 60 6 false
execute if score @s abch_siEffect matches 3 run effect give @s haste 60 6 false
execute if score @s abch_siEffect matches 4 run effect give @s mining_fatigue 60 6 false
execute if score @s abch_siEffect matches 5 run effect give @s strength 60 6 false
execute if score @s abch_siEffect matches 6 run effect give @s instant_health 60 6 false
execute if score @s abch_siEffect matches 7 run effect give @s jump_boost 60 6 false
execute if score @s abch_siEffect matches 8 run effect give @s nausea 60 6 false
execute if score @s abch_siEffect matches 9 run effect give @s resistance 60 6 false
execute if score @s abch_siEffect matches 10 run effect give @s fire_resistance 60 6 false
execute if score @s abch_siEffect matches 11 run effect give @s water_breathing 60 6 false
execute if score @s abch_siEffect matches 12 run effect give @s invisibility 60 6 false
execute if score @s abch_siEffect matches 13 run effect give @s blindness 60 6 false
execute if score @s abch_siEffect matches 14 run effect give @s night_vision 60 6 false
execute if score @s abch_siEffect matches 15 run effect give @s hunger 60 6 false
execute if score @s abch_siEffect matches 16 run effect give @s weakness 60 6 false
execute if score @s abch_siEffect matches 17 run effect give @s poison 60 6 false
execute if score @s abch_siEffect matches 18 run effect give @s wither 60 6 false
execute if score @s abch_siEffect matches 19 run effect give @s health_boost 60 6 false
execute if score @s abch_siEffect matches 20 run effect give @s absorption 60 6 false
execute if score @s abch_siEffect matches 21 run effect give @s saturation 60 6 false
execute if score @s abch_siEffect matches 22 run effect give @s glowing 60 6 false
execute if score @s abch_siEffect matches 23 run effect give @s luck 60 6 false
execute if score @s abch_siEffect matches 24 run effect give @s unluck 60 6 false
execute if score @s abch_siEffect matches 25 run effect give @s slow_falling 60 6 false
execute if score @s abch_siEffect matches 26 run effect give @s conduit_power 60 6 false
execute if score @s abch_siEffect matches 27 run effect give @s dolphins_grace 60 6 false
execute if score @s abch_siEffect matches 28 run effect give @s bad_omen 60 6 false
execute if score @s abch_siEffect matches 29 run effect give @s hero_of_the_village 60 6 false

scoreboard players reset @s abch_siEffect
