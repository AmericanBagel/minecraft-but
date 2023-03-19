scoreboard players remove degradation.loop abch.config 1
execute as @r[ tag=!abch.blacklist, tag=!global.ignore ] at @s run spreadplayers ~ ~ 0 64 false @e[ name="abch.degrade", tag=abch.marker ]
execute at @e[ name="abch.degrade", tag=abch.marker ] run setblock ~ ~-1 ~ air

scoreboard players remove $loop abch.degradation 1
execute if score $loop abch.degradation matches 1.. run function abchc:modifiers/degradation/degrade