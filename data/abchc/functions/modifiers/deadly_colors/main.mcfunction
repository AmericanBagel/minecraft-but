scoreboard players add #timer abch.deadly_colors

## DEFAULTS


# deadly_colors.interval = 1200t (60s)
# offset = 100t (5s)

## #start
# #start = interval -= offset
# #start = 1200 -= 100 = 1100

# #start = interval
scoreboard players operation #start abch.deadly_colors = deadly_colors.interval abch.config
scoreboard players operation #start abch.deadly_colors -= deadly_colors.offset abch.config

# deadly_colors.stop = interval -= warning_stop
# deadly_colors.stop = 1200 -= 1 = 1199

# #stop = interval (1200 = 1200)
scoreboard players operation #stop abch.deadly_colors = deadly_colors.interval abch.config
# #stop = stop_offset (1200 - 1 = 1199)
scoreboard players operation #stop abch.deadly_colors -= deadly_colors.stop_offset abch.config


#execute if score #timer abch.deadly_colors matches 1100..1199 as @a at @s run function abchc:modifiers/deadly_colors/pick_color

# If abch.timer is between #start and #stop (i.e. 1100..1199)
execute if score #timer abch.deadly_colors >= #start abch.deadly_colors if score #timer abch.deadly_colors < #stop abch.deadly_colors


execute if score #timer abch.deadly_colors matches 1200.. as @a at @s run function abchc:modifiers/deadly_colors/check

scoreboard players operation #deadly_colors abch.timer -= deadly_colors.warning_time abch.config