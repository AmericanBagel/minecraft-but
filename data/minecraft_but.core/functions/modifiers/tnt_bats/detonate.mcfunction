#> minecraft_but.coreraft_but.core:modifiers/tnt_bats/detonate
# Detonate TNT fuse
# @within minecraft_but.coreraft_but.core:modifiers/tnt_bats/main
# @context tnt

# Set Fuse to 1.5 seconds
data modify entity @s Fuse set value 30s

# Tag TNT with detonated tag
# so its fuse will not be set again
tag @s add minecraft_but.tnt_bats.detonated