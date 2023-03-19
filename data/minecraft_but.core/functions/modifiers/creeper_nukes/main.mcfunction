#> minecraft_but.coreraft_but.core:modifiers/creeper_nukes/main
# Set creeper explosion radius to config, default 50
# @within minecraft_but.coreraft_but.core:modifiers/directory
# @context root
execute if score minecraft_but.creeper_nukes.radius minecraft_but.config matches -2147483648..2147483647 as @e[ type=creeper, tag=!global.ignore ] store result entity @s ExplosionRadius byte 1 run scoreboard players get creeper_nukes.radius minecraft_but.config
execute unless score minecraft_but.creeper_nukes.radius minecraft_but.config matches -2147483648..2147483647 as @e[ type=creeper, tag=!global.ignore ] store result entity @s ExplosionRadius byte 1 run scoreboard players get creeper_nukes.radius minecraft_but.default