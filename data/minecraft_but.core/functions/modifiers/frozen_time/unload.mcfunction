#> minecraft_but.core:modifiers/frozen_time/unload
#
# Unloading function for frozen time
#
# @context root

#> Unfreeze frozen mobs
effect clear @e[tag=minecraft_but.frozen_time] slowness
execute as @e[tag=minecraft_but.frozen_time] run data modify entity @s NoGravity set value 0b
execute as @e[tag=minecraft_but.frozen_time] run data modify entity @s NoAI set value 0b

#> Remove frozen tag
tag @e[tag=minecraft_but.frozen_time.temp] remove minecraft_but.frozen_time