#> minecraft_but.coreraft_but.core:modifiers/random_structures/start_loop
# Start loop for placing features
# @within minecraft_but.coreraft_but.core:modifiers/random_structures/main
# @context player

#> .25% chance to placefeature every tick
# .25% over 20 seconds = 5% chance every second
# On average, placefeature every 20 seconds.

#> Set counter to chance
# If config is set, use config
execute if score random_structures.chance minecraft_but.config matches -2147483648..2147483647 run scoreboard players operation #counter minecraft_but.modifier.temp = random_structures.chance minecraft_but.config

# Else use default
execute unless score random_structures.chance minecraft_but.config matches -2147483648..2147483647 run scoreboard players operation #counter minecraft_but.modifier.temp = random_structures.chance minecraft_but.default

#scoreboard players set #counter minecraft_but.modifier.temp 10

#> Start loop
function minecraft_but.coreraft_but.core:modifiers/random_structures/loop