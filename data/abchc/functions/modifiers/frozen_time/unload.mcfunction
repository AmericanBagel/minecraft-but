#> abchc:modifiers/frozen_time/unload
#
# Unloading function for frozen time
#
# @context root

#> Unfreeze frozen mobs
effect clear @e[tag=abch.frozen_time] slowness
execute as @e[tag=abch.frozen_time] run data modify entity @s NoGravity set value 0b
execute as @e[tag=abch.frozen_time] run data modify entity @s NoAI set value 0b

#> Remove frozen tag
tag @e[tag=abch.frozen_time.temp] remove abch.frozen_time