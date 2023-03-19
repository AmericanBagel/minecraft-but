#> minecraft_but.core:modifiers/troglodyte/load
# Load function for "Troglodyte" modifier
# @within minecraft_but.core:modifiers/load
# @context root
# 

scoreboard players operation difficulty.troglodyte minecraft_but.default = difficulty.global minecraft_but.config

scoreboard objectives add minecraft_but.troglodyte.deaths deathCount
scoreboard objectives add minecraft_but.troglodyte.played dummy
scoreboard objectives add minecraft_but.troglodyte dummy
scoreboard objectives add minecraft_but.troglodyte.timer dummy
scoreboard objectives add minecraft_but.troglodyte.mercy_timer dummy