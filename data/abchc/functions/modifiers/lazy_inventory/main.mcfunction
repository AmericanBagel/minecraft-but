#> abchc:modifiers/lazy_inventory/main
# Main function for unstable inventory modifier
# Items fall out of player's inventory when damaged
# @context root
# @within abchc:modifiers/directory

#> Check for movement
execute as @a[ tag=!abch.blacklist, tag=!abch.lazy_inventory.blacklist, tag=!global.ignore, gamemode=!creative, gamemode=!spectator] at @s run function abchc:modifiers/lazy_inventory/get_movement

execute as @a[scores={abch.lazy_inventory=1..}] at @s if predicate abchc:01pct run function abchc:modifiers/lazy_inventory/pick_slot