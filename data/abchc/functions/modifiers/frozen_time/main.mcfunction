#> abchc:modifiers/frozen_time/main
# 
# Freeze entities
#
# @context root
# @within abchc:modifiers/directory

#> Give all non-blacklisted, non-ignored mobs which have gravity and AI enabled the frozen tag
tag @e[tag=!abch.blacklist,tag=!global.ignore,type=!player,nbt={NoAI:0b,NoGravity:0b},type=#abchc:living_base] add abch.frozen_time

#> Give mobs with frozen tag slowness, no gravity, and no ai
effect give @e[tag=abch.frozen_time] slowness 1 255 true
execute as @e[tag=abch.frozen_time] run data modify entity @s NoGravity set value 1b
execute as @e[tag=abch.frozen_time] run data modify entity @s NoAI set value 1b