#> minecraft_but.core:modifiers/tnt_rain/loop
#
# Loop for tnt spawning
#
# @within minecraft_but.core:modifiers/tnt_rain/main
# @context root
# @input
#   score tnt_rain.sky minecraft_but.config
#       Whether to spawn tnts from the sky
#   score tnt_rain.relative minecraft_but.config
#       Whether to spawn tnts above player


#> Commands
# 25% chance to rain tnts from Y319 unless disabled
execute as @a[ tag=!minecraft_but.blacklist, tag=!minecraft_but.tnt_rain.blacklist ] at @s if score tnt_rain.sky minecraft_but.config matches 1 if predicate minecraft_but.core:25pct run function minecraft_but.core:modifiers/tnt_rain/spawn_sky

# 25% chance to rain tnts above player unless disabled
execute as @a[ tag=!minecraft_but.blacklist, tag=!minecraft_but.tnt_rain.blacklist ] at @s if score tnt_rain.relative minecraft_but.config matches 1 if predicate minecraft_but.core:25pct run function minecraft_but.core:modifiers/tnt_rain/relative

#> Loop
# Decrement loop
scoreboard players remove $loop minecraft_but.tnt_rain 1

# Continue loop
execute if score $loop minecraft_but.tnt_rain matches 1.. run function minecraft_but.core:modifiers/tnt_rain/loop