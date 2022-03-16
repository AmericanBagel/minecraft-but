scoreboard players add .global abch.fire_rain.timer 1
execute if score .global abch.fire_rain.timer matches 3.. as @a[ tag=!blacklist, tag=!global.ignore ] at @s run function abchc:modifiers/fire_rain/fire
execute if score .global abch.fire_rain.timer matches 3.. run scoreboard players reset .global abch.fire_rain.timer
