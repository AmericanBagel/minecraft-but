scoreboard players set in abch.rng.math 1
scoreboard players set in1 abch.rng.math 29
function abchc:apis/rng/range
scoreboard players operation @s abch.suspicious_injury.effect = out abch.rng.math

execute if score @s abch.suspicious_injury.effect matches 1 run effect give @s speed 60 9 false
execute if score @s abch.suspicious_injury.effect matches 2 run effect give @s slowness 60 9 false
execute if score @s abch.suspicious_injury.effect matches 3 run effect give @s haste 60 9 false
execute if score @s abch.suspicious_injury.effect matches 4 run effect give @s mining_fatigue 60 9 false
execute if score @s abch.suspicious_injury.effect matches 5 run effect give @s strength 60 9 false
execute if score @s abch.suspicious_injury.effect matches 6 run effect give @s instant_health 60 9 false
execute if score @s abch.suspicious_injury.effect matches 7 run effect give @s jump_boost 60 9 false
execute if score @s abch.suspicious_injury.effect matches 8 run effect give @s nausea 60 9 false
execute if score @s abch.suspicious_injury.effect matches 9 run effect give @s resistance 60 9 false
execute if score @s abch.suspicious_injury.effect matches 10 run effect give @s fire_resistance 60 9 false
execute if score @s abch.suspicious_injury.effect matches 11 run effect give @s water_breathing 60 9 false
execute if score @s abch.suspicious_injury.effect matches 12 run effect give @s invisibility 60 9 false
execute if score @s abch.suspicious_injury.effect matches 13 run effect give @s blindness 60 9 false
execute if score @s abch.suspicious_injury.effect matches 14 run effect give @s night_vision 60 9 false
execute if score @s abch.suspicious_injury.effect matches 15 run effect give @s hunger 60 9 false
execute if score @s abch.suspicious_injury.effect matches 16 run effect give @s weakness 60 9 false
execute if score @s abch.suspicious_injury.effect matches 17 run effect give @s poison 60 9 false
execute if score @s abch.suspicious_injury.effect matches 18 run effect give @s wither 60 9 false
execute if score @s abch.suspicious_injury.effect matches 19 run effect give @s health_boost 60 9 false
execute if score @s abch.suspicious_injury.effect matches 20 run effect give @s absorption 60 9 false
execute if score @s abch.suspicious_injury.effect matches 21 run effect give @s saturation 60 9 false
execute if score @s abch.suspicious_injury.effect matches 22 run effect give @s glowing 60 9 false
execute if score @s abch.suspicious_injury.effect matches 23 run effect give @s luck 60 9 false
execute if score @s abch.suspicious_injury.effect matches 24 run effect give @s unluck 60 9 false
execute if score @s abch.suspicious_injury.effect matches 25 run effect give @s slow_falling 60 9 false
execute if score @s abch.suspicious_injury.effect matches 26 run effect give @s conduit_power 60 9 false
execute if score @s abch.suspicious_injury.effect matches 27 run effect give @s dolphins_grace 60 9 false
execute if score @s abch.suspicious_injury.effect matches 28 run effect give @s bad_omen 60 9 false
execute if score @s abch.suspicious_injury.effect matches 29 run effect give @s hero_of_the_village 60 9 false

scoreboard players reset @s abch.suspicious_injury.effect
