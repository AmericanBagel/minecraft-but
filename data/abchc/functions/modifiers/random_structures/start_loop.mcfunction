#> abchc:modifiers/random_structures/start_loop
# Start loop for placing features
# @within abchc:modifiers/random_structures/main
# @context player

#> .25% chance to placefeature every tick
# .25% over 20 seconds = 5% chance every second
# On average, placefeature every 20 seconds.

#> Set counter to chance
# If config is set, use config
execute if score random_structures.chance abch.config matches -2147483648..2147483647 run scoreboard players operation #counter abch.modifier.temp = random_structures.chance abch.config

# Else use default
execute unless score random_structures.chance abch.config matches -2147483648..2147483647 run scoreboard players operation #counter abch.modifier.temp = random_structures.chance abch.default

#scoreboard players set #counter abch.modifier.temp 10

#> Start loop
function abchc:modifiers/random_structures/loop