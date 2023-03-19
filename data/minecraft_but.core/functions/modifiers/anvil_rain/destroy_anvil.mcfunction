#> minecraft_but.coreraft_but.core:modifiers/anvil_rain/destroy_anvil
# Destroy anvils
# @context destroy marker
# @within minecraft_but.coreraft_but.core:modifiers/anvil_rain/mark_destroy

# Remove anvils in 3x3 area because marker will occasionally be offset slightly
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace #minecraft:anvil

# Anvil particle at center of anvil
execute align xyz run particle block anvil ~ ~-0.5 ~ 0.5 0.1 0.5 1 10 normal

# Kill destroy marker
kill @s