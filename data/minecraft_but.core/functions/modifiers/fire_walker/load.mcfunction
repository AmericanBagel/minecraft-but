#> minecraft_but.coreraft_but.core:modifiers/fire_walker/load
# Load function for fire walker modifier
# Manage scoreboards
# @output
#   score fire_walker.rate minecraft_but.config
#       How many blocks to try to fire-ify every tick

scoreboard objectives add minecraft_but.fire_walker.total minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add minecraft_but.fire_walker.walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add minecraft_but.fire_walker.crouch minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add minecraft_but.fire_walker.sprint minecraft.custom:minecraft.sprint_one_cm

scoreboard objectives add minecraft_but.fire_walker dummy

#> Set default rate
execute unless score fire_walker.rate minecraft_but.config matches 1..2147483647 run scoreboard players set fire_walker.rate minecraft_but.config 1