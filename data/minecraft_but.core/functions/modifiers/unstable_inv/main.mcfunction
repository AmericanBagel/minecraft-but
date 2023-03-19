#> minecraft_but.coreraft_but.core:modifiers/unstable_inv/main
# Main function for unstable inventory modifier
# Items fall out of player's inventory when damaged
# @context root
# @within minecraft_but.coreraft_but.core:modifiers/directory
execute as @a[scores={minecraft_but.unstable_inv.damage=1..},tag=!minecraft_but.blacklist, tag=!global.ignore, tag=!minecraft_but.unstable_inv.blacklist, gamemode=!creative, gamemode=!specminecraft_but.core ] at @s run function minecraft_but.core:modifiers/unstable_inv/pick_slot