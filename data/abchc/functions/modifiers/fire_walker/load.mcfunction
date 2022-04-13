#> abchc:modifiers/fire_walker/load
# Load function for fire walker modifier
# Manage scoreboards
# @output
#   score fire_walker.rate abch.config
#       How many blocks to try to fire-ify every tick

scoreboard objectives add abch.fire_walker.total minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add abch.fire_walker.walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add abch.fire_walker.crouch minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add abch.fire_walker.sprint minecraft.custom:minecraft.sprint_one_cm

scoreboard objectives add abch.fire_walker dummy

#> Set default rate
execute unless score fire_walker.rate abch.config matches 1..2147483647 run scoreboard players set fire_walker.rate abch.config 1