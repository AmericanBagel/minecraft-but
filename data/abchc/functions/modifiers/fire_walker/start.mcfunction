#> abchc:modifiers/fire_walker/start
# Start loop to try to fireify blocks
# @within abchc:modifiers/fire_walker/main
# @context player
# @input
#   score fire_walker.rate abch.config
#       How many blocks to try to fire-ify every tick

#> Set how many times to loop to config
scoreboard players operation $loop abch.fire_walker = fire_walker.rate abch.config

#> Start loop
function abchc:modifiers/fire_walker/select_y