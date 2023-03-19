#> abchc:modifiers/2020_mode/entity
# Teleport entities away from player
# @within abchc:modifiers/2020_mode/main
# @context player


# Store nearby entities' x position
execute store result score @s abch.2020_mode.x run data get entity @s Pos[0]
# Subtract to player's x position
scoreboard players operation @s abch.2020_mode.x -= @p abch.2020_mode.x
# Store the difference into nearby entity to make difference larger, moving entities away
execute store result entity @s Motion[0] double 0.1 run scoreboard players get @s abch.2020_mode.x

# Store nearby entities' z position
execute store result score @s abch.2020_mode.z run data get entity @s Pos[2]
# Subtract to player's z position
scoreboard players operation @s abch.2020_mode.z -= @p abch.2020_mode.z
# Store the difference into nearby entity to make difference larger, moving entities away
execute store result entity @s Motion[2] double 0.1 run scoreboard players get @s abch.2020_mode.z