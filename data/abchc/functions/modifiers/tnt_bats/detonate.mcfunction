#> abchc:modifiers/tnt_bats/detonate
# Detonate TNT fuse
# @within abchc:modifiers/tnt_bats/main
# @context tnt

# Set Fuse to 3 seconds
data modify entity @s Fuse set value 60s

# Tag TNT with detonated tag
# so its fuse will not be set again
tag @s add abch.tnt_bats.detonated