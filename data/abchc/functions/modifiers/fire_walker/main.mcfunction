#> abchc:modifiers/fire_walker/main
# Main function for fire walker modifier
# Players leave a trail of fire as they walk
# @within abchc:modifiers/directory
# @context root

execute as @a[tag=!abch.blacklist,tag=!abch.fire_walker.blacklist,tag=!global.ignore] at @s run function abchc:modifiers/fire_walker/start