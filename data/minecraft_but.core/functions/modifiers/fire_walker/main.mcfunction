#> minecraft_but.core:modifiers/fire_walker/main
# Main function for fire walker modifier
# Players leave a trail of fire as they walk
# @within minecraft_but.core:modifiers/directory
# @context root

execute as @a[tag=!minecraft_but.blacklist,tag=!minecraft_but.fire_walker.blacklist,tag=!global.ignore] at @s run function minecraft_but.core:modifiers/fire_walker/start