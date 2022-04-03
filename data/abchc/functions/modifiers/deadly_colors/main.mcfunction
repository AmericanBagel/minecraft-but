# TEMP
scoreboard players set deadly_colors.interval abch.config 50
scoreboard players set deadly_colors.offset abch.config 40
scoreboard players set deadly_colors.stop_offset abch.config 1

# Increase timer
scoreboard players add time abch.deadly_colors 1

## #start = interval -= offset
# #start = interval
scoreboard players operation #start abch.deadly_colors = deadly_colors.interval abch.config
# #start -= offset
scoreboard players operation #start abch.deadly_colors -= deadly_colors.offset abch.config

## #stop = interval -= warning_stop
# #stop = interval (1200 = 1200)
scoreboard players operation #stop abch.deadly_colors = deadly_colors.interval abch.config
# #stop = stop_offset (1200 - 1 = 1199)
scoreboard players operation #stop abch.deadly_colors -= deadly_colors.stop_offset abch.config

# When warning should start (#start), run warning setup function for either random mode or set mode
execute as @a[ tag=!abch.blacklist, tag=!global.ignore ] at @s if score time abch.deadly_colors = #start abch.deadly_colors if score deadly_colors.random abch.config matches 1 run function abchc:modifiers/deadly_colors/random/pre
execute as @a[ tag=!abch.blacklist, tag=!global.ignore ] at @s if score time abch.deadly_colors = #start abch.deadly_colors unless score deadly_colors.random abch.config matches 1 run function abchc:modifiers/deadly_colors/set/pre

# While warning is ongoing (between #start and #stop), run warn functions for either random mode or set mode
execute as @a[ tag=!abch.blacklist, tag=!global.ignore ] at @s if score time abch.deadly_colors >= #start abch.deadly_colors if score time abch.deadly_colors < #stop abch.deadly_colors if score deadly_colors.random abch.config matches 1 run function abchc:modifiers/deadly_colors/random/warn
execute as @a[ tag=!abch.blacklist, tag=!global.ignore ] at @s if score time abch.deadly_colors >= #start abch.deadly_colors if score time abch.deadly_colors < #stop abch.deadly_colors unless score deadly_colors.random abch.config matches 1 run function abchc:modifiers/deadly_colors/set/warn

# Once the cap of the interval has been reached, run kill function for either random or set mode
execute as @a[ tag=!abch.blacklist, tag=!global.ignore ] at @s if score time abch.deadly_colors > #stop abch.deadly_colors if score deadly_colors.random abch.config matches 1 run function abchc:modifiers/deadly_colors/random/kill
execute as @a[ tag=!abch.blacklist, tag=!global.ignore ] at @s if score time abch.deadly_colors > #stop abch.deadly_colors unless score deadly_colors.random abch.config matches 1 run function abchc:modifiers/deadly_colors/set/kill