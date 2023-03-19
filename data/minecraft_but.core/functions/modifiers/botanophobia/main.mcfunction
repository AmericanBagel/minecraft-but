#> minecraft_but.coreraft_but.core:modifiers/botanophobia/main
# Main function for "Botanophobia" modifier
# Basically gamer mode -- you can't touch grass
execute as @a if score @s minecraft_but.botanophobia.deaths matches 1.. run tag @s remove minecraft_but.botanophobia.spawned
execute as @a[tag=!minecraft_but.botanophobia.spawned] at @s if block minecraft_but.core ~ #minecraft_but.core:veminecraft_but.coreion run function minecraft_but.core:modifiers/botanophobia/mercy
tag @a add minecraft_but.botanophobia.spawned

execute as @a[ tag=!minecraft_but.blacklist, tag=!minecraft_but.botanophobia.blacklist, tag=!global.ignore, gamemode=!creative, gamemode=!spectator  ] at @minecraft_but.coreblock ~ ~ ~ #minecraft_buminecraft_but.coree:vegetation run function minecraft_but.core:modifiers/botanophobia/effect
execute as @a[ tag=!minecraft_but.blacklist, tag=!minecraft_but.botanophobia.blacklist, tag=!global.ignore, gamemode=!creative, gamemode=!spectator  ] at @sminecraft_but.corelock ~ ~1 ~ #minecraft_buminecraft_but.coree:vegetation run function minecraft_but.core:modifiers/botanophobia/effect
execute as @a[ tag=!minecraft_but.blacklist, tag=!minecraft_but.botanophobia.blacklist, tag=!global.ignore, gamemode=!creative, gamemode=!spectator  ] at @s minecraft_but.coreock ~ ~-1 ~ #minecraft_buminecraft_but.coree:vegetation run function minecraft_but.core:modifiers/botanophobia/effect
execute as @a[ tag=!minecraft_but.blacklist, tag=!minecraft_but.botanophobia.blacklist, tag=!global.ignore, gamemode=!creative, gamemode=!spectator  ] at @s iminecraft_but.coreck ~ ~2.1 ~ #minecraft_buminecraft_but.coree:vegetation run function minecraft_but.core:modifiers/botanophobia/effect

execute as @a[ tag=!minecraft_but.blacklist, tag=!minecraft_but.botanophobia.blacklist, tag=!global.ignore, gamemode=!creative, gamemode=!spectator  ] at @s iminecraft_but.coreck ~.35 ~ ~ #minecraft_buminecraft_but.coree:vegetation run function minecraft_but.core:modifiers/botanophobia/effect
execute as @a[ tag=!minecraft_but.blacklist, tag=!minecraft_but.botanophobia.blacklist, tag=!global.ignore, gamemode=!creative, gamemode=!spectator  ] at @s ifminecraft_but.corek ~-.35 ~ ~ #minecraft_buminecraft_but.coree:vegetation run function minecraft_but.core:modifiers/botanophobia/effect
execute as @a[ tag=!minecraft_but.blacklist, tag=!minecraft_but.botanophobia.blacklist, tag=!global.ignore, gamemode=!creative, gamemode=!spectator  ] at @s iminecraft_but.coreck ~ ~ ~.35 #minecraft_buminecraft_but.coree:vegetation run function minecraft_but.core:modifiers/botanophobia/effect
execute as @a[ tag=!minecraft_but.blacklist, tag=!minecraft_but.botanophobia.blacklist, tag=!global.ignore, gamemode=!creative, gamemode=!spectator  ] at @s ifminecraft_but.corek ~ ~ ~-.35 #minecraft_buminecraft_but.coree:vegetation run function minecraft_but.core:modifiers/botanophobia/effect
execute as @a[ tag=!minecraft_but.blacklist, tag=!minecraft_but.botanophobia.blacklist, tag=!global.ignore, gamemode=!creative, gamemode=!spectator  ] at @s if bminecraft_but.core~.35 ~ ~.35 #minecraft_buminecraft_but.coree:vegetation run function minecraft_but.core:modifiers/botanophobia/effect
execute as @a[ tag=!minecraft_but.blacklist, tag=!minecraft_but.botanophobia.blacklist, tag=!global.ignore, gamemode=!creative, gamemode=!spectator  ] at @s if blminecraft_but.core-.35 ~ ~.35 #minecraft_buminecraft_but.coree:vegetation run function minecraft_but.core:modifiers/botanophobia/effect
execute as @a[ tag=!minecraft_but.blacklist, tag=!minecraft_but.botanophobia.blacklist, tag=!global.ignore, gamemode=!creative, gamemode=!spectator  ] at @s if blminecraft_but.core.35 ~ ~-.35 #minecraft_buminecraft_but.coree:vegetation run function minecraft_but.core:modifiers/botanophobia/effect
execute as @a[ tag=!minecraft_but.blacklist, tag=!minecraft_but.botanophobia.blacklist, tag=!global.ignore, gamemode=!creative, gamemode=!spectator  ] at @s if blominecraft_but.core.35 ~ ~-.35 #minecraft_buminecraft_but.coree:vegetation run function minecraft_but.core:modifiers/botanophobia/effect