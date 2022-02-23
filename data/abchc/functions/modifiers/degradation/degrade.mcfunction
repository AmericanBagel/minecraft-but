scoreboard players remove degradation.loop abch.config 1
execute as @a at @s run spreadplayers ~ ~ 0 16 false @e[name="abch.degrade",tag=abch.marker]
execute at @e[name="abch.degrade",tag=abch.marker] run setblock ~ ~-1 ~ air