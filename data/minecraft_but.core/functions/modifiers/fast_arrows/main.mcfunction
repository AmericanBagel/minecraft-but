#> minecraft_but.coreraft_but.core:modifiers/fast_arrows/main
# Main functino for "fast arrows" modifier
# @within minecraft_but.coreraft_but.core:modifiers/directory
# @context root

# Increase arrows' velocity
execute as @e[type=arrow,tag=!global.ignore,tag=!minecraft_but.fast_arrows] at @s run minecraft_but.coreion minecraft_but.core:modifiers/fast_arrows/velocity