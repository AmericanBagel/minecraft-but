#> abchc:modifiers/troglodyte/load
# Load function for "Troglodyte" modifier
# @within abchc:modifiers/load
# @context root
# 

scoreboard players operation difficulty.troglodyte abch.default = difficulty.global abch.config

scoreboard objectives add abch.troglodyte.deaths deathCount
scoreboard objectives add abch.troglodyte.played dummy
scoreboard objectives add abch.troglodyte dummy
scoreboard objectives add abch.troglodyte.timer dummy
scoreboard objectives add abch.troglodyte.mercy_timer dummy