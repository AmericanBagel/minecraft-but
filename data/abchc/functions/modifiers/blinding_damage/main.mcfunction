execute as @a[ tag=!abch.blacklist, scores={ abch.blinding_damage=1.. }, tag=!abch.blinding_light.blacklist ] run effect give @s blindness 3 0 true
scoreboard players reset @a[ tag=!abch.blacklist, tag=!global.ignore, tag=!abch.blinding_light.blacklist ] abchc.blDmg