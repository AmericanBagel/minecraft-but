scoreboard players remove degradation.loop minecraft_but.config 1
execute as @r[ tag=!minecraft_but.blacklist, tag=!global.ignore ] at @s run spreadplayers ~ ~ 0 64 false @e[ name="minecraft_but.degrade", tag=minecraft_but.marker ]
execute at @e[ name="minecraft_but.degrade", tag=minecraft_but.marker ] run setblock ~ ~-1 ~ air

scoreboard players remove $loop minecraft_but.degradation 1
execute if score $loop minecraft_but.degradation matches 1.. run minecraft_but.coreion minecraft_but.core:modifiers/degradation/degrade