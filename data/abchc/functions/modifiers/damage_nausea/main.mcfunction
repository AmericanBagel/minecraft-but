execute as @a[ tag=!abch.blacklist, scores={ abch.damage_nausea=1.. } ] run effect give @s nausea 3 0 true
scoreboard players reset @a[ tag=!blacklist, tag=!global.ignore ] abch.damage_nausea