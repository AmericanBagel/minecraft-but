#> minecraft_but.core:modifiers/tnt_rain/mark_destroy
# Mark tnts for destruction and destroy after one tick
# @context tnt marker
# @within minecraft_but.core:modifiers/tnt_rain/main

# 1 tick after being tagged by the commands below, destroy tnt and kill marker
execute as @s[ tag=minecraft_but.tnt_rain.destroy ] run function minecraft_but.core:modifiers/tnt_rain/destroy_tnt
# Play particles 1 tick before destroying tnts. Playing particles before it is deleted makes it look smooth and less laggy. ¯\_(ツ)_/¯
execute unless entity @e[ type=falling_block, tag=minecraft_but.tnt, distance=..0.75 ] run particle block tnt ~ ~-0.5 ~ 0.5 0.1 0.5 1 10 normal
execute unless entity @e[ type=falling_block, tag=minecraft_but.tnt, distance=..0.75 ] run particle smoke ~ ~-0.5 ~ 0.5 0.1 0.5 0.2 10 normal
# Add tnt_rain.destroy tag so the tnt can be destroyed and the marker deleted
execute unless entity @e[ type=falling_block, tag=minecraft_but.tnt, distance=..0.75 ] run tag @s add minecraft_but.tnt_rain.destroy