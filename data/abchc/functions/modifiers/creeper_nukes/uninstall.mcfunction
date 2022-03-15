#> abchc:modifiers/creeper_nukes/uninstall
# Uninstall function for creeper_nukes
# @within abchc:modifiers/uninstall
# @context root
execute as @e[ type=creeper ] run data merge entity @s {ExplosionRadius: 3b}