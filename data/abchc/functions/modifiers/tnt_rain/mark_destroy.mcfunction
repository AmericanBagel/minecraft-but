# 1 tick after being tagged by the commands below, destroy anvil and kill marker
execute as @s[tag=abch.anvil_rain.destroy] run function abchc:modifiers/anvil_rain/destroy_anvil
# Play particles 1 tick before destroying anvils. Playing particles before it is deleted makes it look smooth and less laggy. ¯\_(ツ)_/¯
execute unless entity @e[type=falling_block,tag=abch.anvil,distance=..0.75] run particle block anvil ~ ~-0.5 ~ 0.5 0.1 0.5 1 10 normal
execute unless entity @e[type=falling_block,tag=abch.anvil,distance=..0.75] run particle smoke ~ ~-0.5 ~ 0.5 0.1 0.5 0.2 10 normal
# Add anvil_rain.destroy tag so the anvil can be destroyed and the marker deleted
execute unless entity @e[type=falling_block,tag=abch.anvil,distance=..0.75] run tag @s add abch.anvil_rain.destroy