#> minecraft_but.coreraft_but.core:modifiers/frozen_time/main
# 
# Freeze entities
#
# @context root
# @within minecraft_but.coreraft_but.core:modifiers/directory

#> Give all non-blacklisted, non-ignored mobs which have gravity and AI enabled the frozen tag
tag @e[tag=!minecraft_but.blacklist,tag=!global.ignore,tag=!minecraft_but.frozen_timminecraft_but.corecklist,type=#minecraft_but.core:living_base,nbt={NoAI:0b,NoGravity:0b}] add minecraft_but.frozen_time

#> Give mobs with frozen tag slowness, no gravity, and no ai
effect give @e[tag=minecraft_but.frozen_time, tag=!global.ignore ] slowness 1 255 true
execute as @e[tag=minecraft_but.frozen_time, tag=!global.ignore ] run data modify entity @s NoGravity set value 1b
execute as @e[tag=minecraft_but.frozen_time, tag=!global.ignore ] run data modify entity @s NoAI set value 1b