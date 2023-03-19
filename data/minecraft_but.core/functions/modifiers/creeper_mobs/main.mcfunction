#> minecraft_but.coreraft_but.core:modifiers/creeper_mobs/main
# Main function for "Creeper mobs" modifier
# Mobs become like creepers and explode when players get close
# @within minecraft_but.coreraft_but.core:modifiers/directory
# @context root
# @input
#   score creeper_mobs.type minecraft_but.config
#       What type of mobs should explode
#       like creepers.
#       1 = hostile mobs
#       2 = hostile and neutral mobs
#       3 = all mobs
# @output
#   score @s minecraft_but.creeper_mobs.fuse
#       How long before mob explodes

#> Fuse for mobs near players
# Depending on config, select hostile, hostile and neutral, or all mobs

# If configs are set, use configs
execute if score creeper_mobs.type minecraft_but.config matches -2147483648..2147483647 run minecraft_but.coreion minecraft_but.core:modifiers/creeper_mobs/run_config
# Else fall back to defaults
execute unless score creeper_mobs.type minecraft_but.config matches -2147483648..2147483647 run minecraft_but.coreion minecraft_but.core:modifiers/creeper_mobs/run_default

#> Play sound on just-ignited entities
execute as @e[type=#minecraft_but.coreraft_but.core:mobs,tag=!global.ignore,tag=!minecraft_but.creeper_mobs.ignore] at @s if score @s minecraft_but.creeper_mobs.fuse matches 1 run playsound minecraft:entity.creeper.primed hostile @a ~ ~ ~ 3 1

#> If there's no player nearby before the fuse is halfway, reset fuse
execute as @e[type=#minecraft_but.coreraft_but.core:mobs,tag=!global.ignore,tag=!minecraft_but.creeper_mobs.ignore] at @s if score @s minecraft_but.creeper_mobs.fuse matches ..15 unless entity @a[distance=..2.5] run scoreboard players reset @s minecraft_but.creeper_mobs.fuse

#> If the fuse is over 1.5 seconds, explode
execute as @e[type=#minecraft_but.coreraft_but.core:mobs,tag=!global.ignore,tag=!minecraft_but.creeper_mobs.ignore] at @s if score @s minecraft_but.creeper_mobs.minecraft_but.corematches 30.. run function minecraft_but.core:modifiers/creeper_mobs/explode
