#> minecraft_but.core:modifiers/anvil_rain/loop
#
# Loop for anvil spawning
#
# @within minecraft_but.core:modifiers/anvil_rain/main
# @context root
# @input
#   score anvil_rain.sky minecraft_but.config
#       Whether to spawn anvils from the sky
#   score anvil_rain.relative minecraft_but.config
#       Whether to spawn anvils above player


#> Commands
# 25% chance to rain anvils from Y319 unless disabled
execute as @a[ tag=!minecraft_but.blacklist, tag=!minecraft_but.anvil_rain.blacklist ] at @s if score anvil_rain.sky minecraft_but.config matches 1 if predicate minecraft_but.core:25pct run function minecraft_but.core:modifiers/anvil_rain/spawn_sky

# 25% chance to rain anvils above player unless disabled
execute as @a[ tag=!minecraft_but.blacklist, tag=!minecraft_but.anvil_rain.blacklist ] at @s if score anvil_rain.relative minecraft_but.config matches 1 if predicate minecraft_but.core:25pct run function minecraft_but.core:modifiers/anvil_rain/relative

#> Loop
# Decrement loop
scoreboard players remove $loop minecraft_but.anvil_rain 1

#tellraw @a ["======\nloop",{"score":{"objective": "minecraft_but.anvil_rain","name": "$loop"}}]

# Continue loop
execute if score $loop minecraft_but.anvil_rain matches 1.. run function minecraft_but.core:modifiers/anvil_rain/loop