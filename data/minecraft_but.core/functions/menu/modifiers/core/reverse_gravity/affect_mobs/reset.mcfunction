#> minecraft_but.coreraft_but.core:menu/modifiers/core/reverse_gravity/affect_mobs/reset
# Reset reverse_gravity config score affect_mobs to default
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.coreraft_but.core:menu/modifiers/core/reverse_gravity/**
# @context player

#> Reset
# If default was set, set score to default
execute if score reverse_gravity.affect_mobs minecraft_but.default matches -2147483648..2147483647 run scoreboard players operation reverse_gravity.affect_mobs minecraft_but.config = reverse_gravity.affect_mobs minecraft_but.default
# If default wasn't set, set score to 0
execute unless score reverse_gravity.affect_mobs minecraft_but.default matches -2147483648..2147483647 run scoreboard players set reverse_gravity.affect_mobs minecraft_but.config 0

#> Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/reverse_gravity/config