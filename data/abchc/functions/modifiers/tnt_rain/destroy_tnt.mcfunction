#> abchc:modifiers/tnt_rain/destroy_tnt
# Destroy tnts
# @context destroy marker
# @within abchc:modifiers/tnt_rain/mark_destroy

# Remove tnts in 3x3 area because marker will occasionally be offset slightly
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace #minecraft:tnt

# tnt particle at center of tnt
execute align xyz run particle block tnt ~ ~-0.5 ~ 0.5 0.1 0.5 1 10 normal

# Kill destroy marker
kill @s