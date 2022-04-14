#> abchc:modifiers/tnt_rain/loop
#
# Loop for tnt spawning
#
# @within abchc:modifiers/tnt_rain/main
# @context root
# @input
#   score tnt_rain.sky abch.config
#       Whether to spawn tnts from the sky
#   score tnt_rain.relative abch.config
#       Whether to spawn tnts above player


#> Commands
# 25% chance to rain tnts from Y319 unless disabled
execute as @a[ tag=!abch.blacklist, tag=!abch.tnt_rain.blacklist ] at @s if score tnt_rain.sky abch.config matches 1 if predicate abchc:25pct run function abchc:modifiers/tnt_rain/spawn_sky

# 25% chance to rain tnts above player unless disabled
execute as @a[ tag=!abch.blacklist, tag=!abch.tnt_rain.blacklist ] at @s if score tnt_rain.relative abch.config matches 1 if predicate abchc:25pct run function abchc:modifiers/tnt_rain/relative

#> Loop
# Decrement loop
scoreboard players remove $loop abch.tnt_rain 1

# Continue loop
execute if score $loop abch.tnt_rain matches 1.. run function abchc:modifiers/tnt_rain/loop