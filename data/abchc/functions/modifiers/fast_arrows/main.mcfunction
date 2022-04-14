#> abchc:modifiers/fast_arrows/main
# Main functino for "fast arrows" modifier
# @within abchc:modifiers/directory
# @context root

# Increase arrows' velocity
execute as @e[type=arrow,tag=!global.ignore,tag=!abch.fast_arrows] at @s run function abchc:modifiers/fast_arrows/velocity