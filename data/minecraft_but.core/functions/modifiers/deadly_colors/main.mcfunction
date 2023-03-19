# TEMP
scoreboard players set deadly_colors.interval minecraft_but.config 50
scoreboard players set deadly_colors.offset minecraft_but.config 40
scoreboard players set deadly_colors.stop_offset minecraft_but.config 1

# Increase timer
scoreboard players add time minecraft_but.deadly_colors 1

## #start = interval -= offset
# #start = interval
scoreboard players operation #start minecraft_but.deadly_colors = deadly_colors.interval minecraft_but.config
# #start -= offset
scoreboard players operation #start minecraft_but.deadly_colors -= deadly_colors.offset minecraft_but.config

## #stop = interval -= warning_stop
# #stop = interval (1200 = 1200)
scoreboard players operation #stop minecraft_but.deadly_colors = deadly_colors.interval minecraft_but.config
# #stop = stop_offset (1200 - 1 = 1199)
scoreboard players operation #stop minecraft_but.deadly_colors -= deadly_colors.stop_offset minecraft_but.config

# When warning should start (#start), run warning setup function for either random mode or set mode
execute as @a[ tag=!minecraft_but.blacklist, tag=!global.ignore, tag=!minecraft_but.deadly_colors.blacklist, gamemode=!creative, gamemode=!spectator ] at @s if score time minecraft_but.deadly_colors = #start minecraft_but.deadly_colors if score deadly_colors.randomminecraft_but.corecraft_but.config matches 1 run function minecraft_but.core:modifiers/deadly_colors/random/pre
execute as @a[ tag=!minecraft_but.blacklist, tag=!global.ignore, tag=!minecraft_but.deadly_colors.blacklist, gamemode=!creative, gamemode=!spectator ] at @s if score time minecraft_but.deadly_colors = #start minecraft_but.deadly_colors unless score deadly_colors.randomminecraft_but.corecraft_but.config matches 1 run function minecraft_but.core:modifiers/deadly_colors/set/pre

# While warning is ongoing (between #start and #stop), run warn functions for either random mode or set mode
execute as @a[ tag=!minecraft_but.blacklist, tag=!global.ignore, tag=!minecraft_but.deadly_colors.blacklist, gamemode=!creative, gamemode=!spectator ] at @s if score time minecraft_but.deadly_colors >= #start minecraft_but.deadly_colors if score time minecraft_but.deadly_colors < #stop minecraft_but.deadly_colors if score deminecraft_but.corecolors.random minecraft_but.config matches 1 run function minecraft_but.core:modifiers/deadly_colors/random/warn
execute as @a[ tag=!minecraft_but.blacklist, tag=!global.ignore, tag=!minecraft_but.deadly_colors.blacklist, gamemode=!creative, gamemode=!spectator ] at @s if score time minecraft_but.deadly_colors >= #start minecraft_but.deadly_colors if score time minecraft_but.deadly_colors < #stop minecraft_but.deadly_colors unless score deminecraft_but.corecolors.random minecraft_but.config matches 1 run function minecraft_but.core:modifiers/deadly_colors/set/warn

# Once the cap of the interval has been reached, run kill function for either random or set mode
execute as @a[ tag=!minecraft_but.blacklist, tag=!global.ignore, tag=!minecraft_but.deadly_colors.blacklist, gamemode=!creative, gamemode=!spectator ] at @s if score time minecraft_but.deadly_colors > #stop minecraft_but.deadly_colors if score deadly_colors.randomminecraft_but.corecraft_but.config matches 1 run function minecraft_but.core:modifiers/deadly_colors/random/kill
execute as @a[ tag=!minecraft_but.blacklist, tag=!global.ignore, tag=!minecraft_but.deadly_colors.blacklist , gamemode=!creative, gamemode=!spectator ] at @s if score time minecraft_but.deadly_colors > #stop minecraft_but.deadly_colors unless score deadly_colors.randomminecraft_but.corecraft_but.config matches 1 run function minecraft_but.core:modifiers/deadly_colors/set/kill