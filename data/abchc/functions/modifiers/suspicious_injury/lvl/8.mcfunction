execute store result score @s abch.siEffect run loot spawn ~ -1000 ~ loot abchc:1r29

execute if score @s abch.siEffect matches 1 run effect give @s speed 60 7 false
execute if score @s abch.siEffect matches 2 run effect give @s slowness 60 7 false
execute if score @s abch.siEffect matches 3 run effect give @s haste 60 7 false
execute if score @s abch.siEffect matches 4 run effect give @s mining_fatigue 60 7 false
execute if score @s abch.siEffect matches 5 run effect give @s strength 60 7 false
execute if score @s abch.siEffect matches 6 run effect give @s instant_health 60 7 false
execute if score @s abch.siEffect matches 7 run effect give @s jump_boost 60 7 false
execute if score @s abch.siEffect matches 8 run effect give @s nausea 60 7 false
execute if score @s abch.siEffect matches 9 run effect give @s resistance 60 7 false
execute if score @s abch.siEffect matches 10 run effect give @s fire_resistance 60 7 false
execute if score @s abch.siEffect matches 11 run effect give @s water_breathing 60 7 false
execute if score @s abch.siEffect matches 12 run effect give @s invisibility 60 7 false
execute if score @s abch.siEffect matches 13 run effect give @s blindness 60 7 false
execute if score @s abch.siEffect matches 14 run effect give @s night_vision 60 7 false
execute if score @s abch.siEffect matches 15 run effect give @s hunger 60 7 false
execute if score @s abch.siEffect matches 16 run effect give @s weakness 60 7 false
execute if score @s abch.siEffect matches 17 run effect give @s poison 60 7 false
execute if score @s abch.siEffect matches 18 run effect give @s wither 60 7 false
execute if score @s abch.siEffect matches 19 run effect give @s health_boost 60 7 false
execute if score @s abch.siEffect matches 20 run effect give @s absorption 60 7 false
execute if score @s abch.siEffect matches 21 run effect give @s saturation 60 7 false
execute if score @s abch.siEffect matches 22 run effect give @s glowing 60 7 false
execute if score @s abch.siEffect matches 23 run effect give @s luck 60 7 false
execute if score @s abch.siEffect matches 24 run effect give @s unluck 60 7 false
execute if score @s abch.siEffect matches 25 run effect give @s slow_falling 60 7 false
execute if score @s abch.siEffect matches 26 run effect give @s conduit_power 60 7 false
execute if score @s abch.siEffect matches 27 run effect give @s dolphins_grace 60 7 false
execute if score @s abch.siEffect matches 28 run effect give @s bad_omen 60 7 false
execute if score @s abch.siEffect matches 29 run effect give @s hero_of_the_village 60 7 false

scoreboard players reset @s abch.siEffect
