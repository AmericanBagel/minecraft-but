scoreboard players add .global minecraft_but.fire_rain.timer 1
execute if score .global minecraft_but.fire_rain.timer matches 3.. as @a[ tag=!minecraft_but.blacklist, tag=!global.ignore, tag=!minecraft_but.fire_rain.blacminecraft_but.core ] at @s run function minecraft_but.core:modifiers/fire_rain/fire
execute if score .global minecraft_but.fire_rain.timer matches 3.. run scoreboard players reset .global minecraft_but.fire_rain.timer
