#region Setup
## Increment lag timer scores to players for spawning lag markers every 10 seconds
scoreboard players add @a[ tag=!abch.blacklist, tag=!global.ignore ] abch.lag.timer 1
scoreboard players add @e[ type=marker, tag=abch.lagMarker ] abch.lag.timer 1

## Store player's UUIDs in score
execute as @a[ tag=!abch.blacklist, tag=!global.ignore ] store result score @s abch.lag.UUID1 run data get entity @s UUID[0]
execute as @a[ tag=!abch.blacklist, tag=!global.ignore ] store result score @s abch.lag.UUID2 run data get entity @s UUID[1]
execute as @a[ tag=!abch.blacklist, tag=!global.ignore ] store result score @s abch.lag.UUID3 run data get entity @s UUID[2]
execute as @a[ tag=!abch.blacklist, tag=!global.ignore ] store result score @s abch.lag.UUID4 run data get entity @s UUID[3]
#endregion

# Creates new lag marker for players
# Note: After prototype complete, change definite spawning every 10 seconds to random spawning which gradually increases over time
execute as @a[ tag=!abch.blacklist, tag=!global.ignore ] at @s if score @s abch.lag.timer matches 60.. run function abchc:modifiers/lag/marker

# Run lag function for lag timers existing for over 3 seconds
execute as @e[ type=marker, tag=abch.lagMarker ] at @s if score @s abch.lag.timer matches 10.. run function abchc:modifiers/lag/lag