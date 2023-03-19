#> abchc:modifiers/effect_arrows/main
# Main function for effect arrows modifier
# Arrows are randomly tipped with a random potion effect
#
# TODO: Random duration doesn't work.
#
# @context root
# @within abchc:modifiers/directory

execute as @e[type=arrow,tag=!abch.effect_arrows] at @s run function abchc:modifiers/effect_arrows/arrow