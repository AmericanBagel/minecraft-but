#> abchc:modifiers/unstable_inv/main
# Main function for unstable inventory modifier
# Items fall out of player's inventory when damaged
# @context root
# @within abchc:modifiers/directory
execute as @a[scores={abch.unstable_inv.damage=1..}] at @s run function abchc:modifiers/unstable_inv/pick_slot