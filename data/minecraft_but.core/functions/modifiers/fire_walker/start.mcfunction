#> minecraft_but.coreraft_but.core:modifiers/fire_walker/start
# Start loop to try to fireify blocks
# @within minecraft_but.coreraft_but.core:modifiers/fire_walker/main
# @context player
# @input
#   score fire_walker.rate minecraft_but.config
#       How many blocks to try to fire-ify every tick

#> Set how many times to loop to config
scoreboard players operation $loop minecraft_but.fire_walker = fire_walker.rate minecraft_but.config

#> Start loop
function minecraft_but.coreraft_but.core:modifiers/fire_walker/select_y