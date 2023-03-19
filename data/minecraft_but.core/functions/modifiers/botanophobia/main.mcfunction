#> minecraft_but.core:modifiers/botanophobia/main
# Main function for "Botanophobia" modifier
# Basically gamer mode -- you can't touch grass
execute as @a if score @s minecraft_but.botanophobia.deaths matches 1.. run tag @s remove minecraft_but.botanophobia.spawned
execute as @a[tag=!minecraft_but.botanophobia.spawned] at @s if block ~ ~-1 ~ #minecraft_but.core:vegetation run function minecraft_but.core:modifiers/botanophobia/mercy
tag @a add minecraft_but.botanophobia.spawned

execute as @a[ tag=!minecraft_but.blacklist, tag=!minecraft_but.botanophobia.blacklist, tag=!global.ignore, gamemode=!creative, gamemode=!spectator  ] at @s if block ~ ~ ~ #minecraft_but.core:vegetation run function minecraft_but.core:modifiers/botanophobia/effect
execute as @a[ tag=!minecraft_but.blacklist, tag=!minecraft_but.botanophobia.blacklist, tag=!global.ignore, gamemode=!creative, gamemode=!spectator  ] at @s if block ~ ~1 ~ #minecraft_but.core:vegetation run function minecraft_but.core:modifiers/botanophobia/effect
execute as @a[ tag=!minecraft_but.blacklist, tag=!minecraft_but.botanophobia.blacklist, tag=!global.ignore, gamemode=!creative, gamemode=!spectator  ] at @s if block ~ ~-1 ~ #minecraft_but.core:vegetation run function minecraft_but.core:modifiers/botanophobia/effect
execute as @a[ tag=!minecraft_but.blacklist, tag=!minecraft_but.botanophobia.blacklist, tag=!global.ignore, gamemode=!creative, gamemode=!spectator  ] at @s if block ~ ~2.1 ~ #minecraft_but.core:vegetation run function minecraft_but.core:modifiers/botanophobia/effect

execute as @a[ tag=!minecraft_but.blacklist, tag=!minecraft_but.botanophobia.blacklist, tag=!global.ignore, gamemode=!creative, gamemode=!spectator  ] at @s if block ~.35 ~ ~ #minecraft_but.core:vegetation run function minecraft_but.core:modifiers/botanophobia/effect
execute as @a[ tag=!minecraft_but.blacklist, tag=!minecraft_but.botanophobia.blacklist, tag=!global.ignore, gamemode=!creative, gamemode=!spectator  ] at @s if block ~-.35 ~ ~ #minecraft_but.core:vegetation run function minecraft_but.core:modifiers/botanophobia/effect
execute as @a[ tag=!minecraft_but.blacklist, tag=!minecraft_but.botanophobia.blacklist, tag=!global.ignore, gamemode=!creative, gamemode=!spectator  ] at @s if block ~ ~ ~.35 #minecraft_but.core:vegetation run function minecraft_but.core:modifiers/botanophobia/effect
execute as @a[ tag=!minecraft_but.blacklist, tag=!minecraft_but.botanophobia.blacklist, tag=!global.ignore, gamemode=!creative, gamemode=!spectator  ] at @s if block ~ ~ ~-.35 #minecraft_but.core:vegetation run function minecraft_but.core:modifiers/botanophobia/effect
execute as @a[ tag=!minecraft_but.blacklist, tag=!minecraft_but.botanophobia.blacklist, tag=!global.ignore, gamemode=!creative, gamemode=!spectator  ] at @s if block ~.35 ~ ~.35 #minecraft_but.core:vegetation run function minecraft_but.core:modifiers/botanophobia/effect
execute as @a[ tag=!minecraft_but.blacklist, tag=!minecraft_but.botanophobia.blacklist, tag=!global.ignore, gamemode=!creative, gamemode=!spectator  ] at @s if block ~-.35 ~ ~.35 #minecraft_but.core:vegetation run function minecraft_but.core:modifiers/botanophobia/effect
execute as @a[ tag=!minecraft_but.blacklist, tag=!minecraft_but.botanophobia.blacklist, tag=!global.ignore, gamemode=!creative, gamemode=!spectator  ] at @s if block ~.35 ~ ~-.35 #minecraft_but.core:vegetation run function minecraft_but.core:modifiers/botanophobia/effect
execute as @a[ tag=!minecraft_but.blacklist, tag=!minecraft_but.botanophobia.blacklist, tag=!global.ignore, gamemode=!creative, gamemode=!spectator  ] at @s if block ~-.35 ~ ~-.35 #minecraft_but.core:vegetation run function minecraft_but.core:modifiers/botanophobia/effect