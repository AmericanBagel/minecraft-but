execute if score carnivore minecraft_but.toggle matches 1 if entity @s[tag=!minecraft_but.blacklist, tag=!minecraft_but.carnivore.blacklist, tag=!global.ignore, gamemode=!creative, gamemode=!spectator ] run function minecraft_but.core:modifiers/carnivore/poison
advancement revoke @s only minecraft_but.core:eat_vegetable