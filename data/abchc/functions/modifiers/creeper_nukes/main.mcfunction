#> abchc:modifiers/creeper_nukes/main
# Set creeper explosion radius to config, default 50
# @within abchc:modifiers/directory
# @context root
execute if score abch.creeper_nukes.radius abch.config matches -2147483648..2147483647 as @e[ type=creeper, tag=!global.ignore ] store result entity @s ExplosionRadius byte 1 run scoreboard players get creeper_nukes.radius abch.config
execute unless score abch.creeper_nukes.radius abch.config matches -2147483648..2147483647 as @e[ type=creeper, tag=!global.ignore ] store result entity @s ExplosionRadius byte 1 run scoreboard players get creeper_nukes.radius abch.default