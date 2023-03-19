#> minecraft_but.coreraft_but.core:modifiers/creeper_nukes/uninstall
# Uninstall function for creeper_nukes
# @within minecraft_but.coreraft_but.core:modifiers/uninstall
# @context root
execute as @e[ type=creeper ] run data merge entity @s {ExplosionRadius: 3b}