#> abchc:modifiers/creeper_mobs/main
# Main function for "Creeper mobs" modifier
# Mobs become like creepers and explode when players get close
# @within abchc:modifiers/directory
# @context root
# @input
#   score creeper_mobs.type abch.config
#       What type of mobs should explode
#       like creepers.
#       1 = hostile mobs
#       2 = hostile and neutral mobs
#       3 = all mobs
# @output
#   score @s abch.creeper_mobs.fuse
#       How long before mob explodes

#> Fuse for mobs near players
# Depending on config, select hostile, hostile and neutral, or all mobs

# If configs are set, use configs
execute if score creeper_mobs.type abch.config matches -2147483648..2147483647 run function abchc:modifiers/creeper_mobs/run_config
# Else fall back to defaults
execute unless score creeper_mobs.type abch.config matches -2147483648..2147483647 run function abchc:modifiers/creeper_mobs/run_default

#> Play sound on just-ignited entities
execute as @e[type=#abchc:mobs,tag=!global.ignore,tag=!abch.creeper_mobs.ignore] at @s if score @s abch.creeper_mobs.fuse matches 1 run playsound minecraft:entity.creeper.primed hostile @a ~ ~ ~ 3 1

#> If there's no player nearby before the fuse is halfway, reset fuse
execute as @e[type=#abchc:mobs,tag=!global.ignore,tag=!abch.creeper_mobs.ignore] at @s if score @s abch.creeper_mobs.fuse matches ..15 unless entity @a[distance=..2.5] run scoreboard players reset @s abch.creeper_mobs.fuse

#> If the fuse is over 1.5 seconds, explode
execute as @e[type=#abchc:mobs,tag=!global.ignore,tag=!abch.creeper_mobs.ignore] at @s if score @s abch.creeper_mobs.fuse matches 30.. run function abchc:modifiers/creeper_mobs/explode
