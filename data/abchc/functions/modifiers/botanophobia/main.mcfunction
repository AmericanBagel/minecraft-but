#> abchc:modifiers/botanophobia/main
# Main function for "Botanophobia" modifier
# Basically gamer mode -- you can't touch grass
execute as @a if score @s abch.botanophobia.deaths matches 1.. run tag @s remove abch.botanophobia.spawned
execute as @a[tag=!abch.botanophobia.spawned] at @s if block ~ ~-1 ~ #abchc:vegetation run function abchc:modifiers/botanophobia/mercy
tag @a add abch.botanophobia.spawned

execute as @a[ tag=!abch.blacklist, tag=!global.ignore ] at @s if block ~ ~ ~ #abchc:vegetation run function abchc:modifiers/botanophobia/effect
execute as @a[ tag=!abch.blacklist, tag=!global.ignore ] at @s if block ~ ~1 ~ #abchc:vegetation run function abchc:modifiers/botanophobia/effect
execute as @a[ tag=!abch.blacklist, tag=!global.ignore ] at @s if block ~ ~-1 ~ #abchc:vegetation run function abchc:modifiers/botanophobia/effect
execute as @a[ tag=!abch.blacklist, tag=!global.ignore ] at @s if block ~ ~2.1 ~ #abchc:vegetation run function abchc:modifiers/botanophobia/effect

execute as @a[ tag=!abch.blacklist, tag=!global.ignore ] at @s if block ~.35 ~ ~ #abchc:vegetation run function abchc:modifiers/botanophobia/effect
execute as @a[ tag=!abch.blacklist, tag=!global.ignore ] at @s if block ~-.35 ~ ~ #abchc:vegetation run function abchc:modifiers/botanophobia/effect
execute as @a[ tag=!abch.blacklist, tag=!global.ignore ] at @s if block ~ ~ ~.35 #abchc:vegetation run function abchc:modifiers/botanophobia/effect
execute as @a[ tag=!abch.blacklist, tag=!global.ignore ] at @s if block ~ ~ ~-.35 #abchc:vegetation run function abchc:modifiers/botanophobia/effect
execute as @a[ tag=!abch.blacklist, tag=!global.ignore ] at @s if block ~.35 ~ ~.35 #abchc:vegetation run function abchc:modifiers/botanophobia/effect
execute as @a[ tag=!abch.blacklist, tag=!global.ignore ] at @s if block ~-.35 ~ ~.35 #abchc:vegetation run function abchc:modifiers/botanophobia/effect
execute as @a[ tag=!abch.blacklist, tag=!global.ignore ] at @s if block ~.35 ~ ~-.35 #abchc:vegetation run function abchc:modifiers/botanophobia/effect
execute as @a[ tag=!abch.blacklist, tag=!global.ignore ] at @s if block ~-.35 ~ ~-.35 #abchc:vegetation run function abchc:modifiers/botanophobia/effect