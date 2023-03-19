# No gravity
execute as @e[ type=!player, tag=!global.ignore, tag=!minecraft_but.no_gravity.blacklist, tag=!minecraft_but.blacklist, gamemode=!creative, gamemode=!spectator  ] at @s run data modify entity @s NoGravity set value 1b
effect give @e[ type=player, tag=!global.ignore, tag=!minecraft_but.no_gravity.blacklist, tag=!minecraft_but.blacklist, gamemode=!creative, gamemode=!spectator  ] slow_falling 1 255 true
effect give @e[ type=player, tag=!global.ignore, tag=!minecraft_but.no_gravity.blacklist, tag=!minecraft_but.blacklist, gamemode=!creative, gamemode=!spectator  ] levitation 1 255 true

# Lower players who sneak
execute if score no_gravity.travel minecraft_but.config matches 1 as @a[scores={minecraft_but.no_gravity.sneak=1..}] at @s iminecraft_but.coreck ~ ~-.1 ~ #minecraft_but.core:air run tp @s ~ ~-.1 ~

# Raise players who look up
execute if score no_gravity.travel minecraft_but.config matches 1 as @a[x_rotation=-90..-30] at @s if block minecraft_but.core ~ #minecraft_but.core:air run tp @s ~ ~.1 ~