#> minecraft_but.core:complete_uninstall
# Completely uninstall pack
# Remove scoreboards, clean up tags, remove entities
# @user

#> Run uninstall for modifiers
function minecraft_but.core:modifiers/uninstall

#> Run uninstall for expansion packs
function #minecraft_but.core:uninstall

#> Uninstall
function minecraft_but.core:__uninstall__

tp @e[tag=minecraft_but.core] ~ -1000 ~
tp @e[tag=minecraft_but] ~ -1000 ~

#> APIs
# Distance library
function minecraft_but.core:apis/dist/uninstall
function random:private/uninstall