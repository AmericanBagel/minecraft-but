#> minecraft_but.coreraft_but.core:modifiers/effect_arrows/main
# Main function for effect arrows modifier
# Arrows are randomly tipped with a random potion effect
#
# TODO: Random duration doesn't work.
#
# @context root
# @within minecraft_but.coreraft_but.core:modifiers/directory

execute as @e[type=arrow,tag=!minecraft_but.effect_arrows] at @s run minecraft_but.coreion minecraft_but.core:modifiers/effect_arrows/arrow