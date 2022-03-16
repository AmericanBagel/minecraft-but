execute as @a[ tag=!abch.blacklist, scores={ abch.blinding_damage=1.. } ] run effect give @s blindness 3 0 true
scoreboard players reset @a[ tag=!blacklist, tag=!global.ignore ] abchc.blDmg