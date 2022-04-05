#> abchc:modifiers/feature_fanatic/start_loop
# Start loop for placing features
# @within abchc:modifiers/feature_fanatic/main
# @context player

#> .25% chance to placefeature every tick
# .25% over 20 seconds = 5% chance every second
# On average, placefeature every 20 seconds.

#> Set counter to chance
# If config is set, use config
execute if score feature_fanatic.chance abch.config matches -2147483648..2147483647 run scoreboard players operation #counter abch.modifier.temp = feature_fanatic.chance abch.config

# Else use default
execute unless score feature_fanatic.chance abch.config matches -2147483648..2147483647 run scoreboard players operation #counter abch.modifier.temp = feature_fanatic.chance abch.default

#scoreboard players set #counter abch.modifier.temp 10

#> Start loop
function abchc:modifiers/feature_fanatic/loop