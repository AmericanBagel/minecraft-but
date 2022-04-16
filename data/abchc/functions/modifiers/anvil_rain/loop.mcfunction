#> abchc:modifiers/anvil_rain/loop
#
# Loop for anvil spawning
#
# @within abchc:modifiers/anvil_rain/main
# @context root
# @input
#   score anvil_rain.sky abch.config
#       Whether to spawn anvils from the sky
#   score anvil_rain.relative abch.config
#       Whether to spawn anvils above player


#> Commands
# 25% chance to rain anvils from Y319 unless disabled
execute as @a[ tag=!abch.blacklist, tag=!abch.anvil_rain.blacklist ] at @s if score anvil_rain.sky abch.config matches 1 if predicate abchc:25pct run function abchc:modifiers/anvil_rain/spawn_sky

# 25% chance to rain anvils above player unless disabled
execute as @a[ tag=!abch.blacklist, tag=!abch.anvil_rain.blacklist ] at @s if score anvil_rain.relative abch.config matches 1 if predicate abchc:25pct run function abchc:modifiers/anvil_rain/relative

#> Loop
# Decrement loop
scoreboard players remove $loop abch.anvil_rain 1

#tellraw @a ["======\nloop",{"score":{"objective": "abch.anvil_rain","name": "$loop"}}]

# Continue loop
execute if score $loop abch.anvil_rain matches 1.. run function abchc:modifiers/anvil_rain/loop