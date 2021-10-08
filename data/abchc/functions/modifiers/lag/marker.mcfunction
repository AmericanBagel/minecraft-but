### Reset scores
scoreboard players reset @s abch.lagTimer

### Kills older lag markers belonging to player, preventing the existence of multiple lag markers for one player, by kiling all lag markers with a UUID score matching the player's UUID
execute at @e[type=minecraft:marker,tag=abch.lagMarker] if score @e[type=minecraft:marker,tag=abch.lagMarker,sort=nearest,limit=1] abch.lagUUID1 = @s abch_lagUUID1 run kill @e[type=minecraft:marker,tag=abch.lagMarker,limit=1,sort=nearest]
execute at @e[type=minecraft:marker,tag=abch.lagMarker] if score @e[type=minecraft:marker,tag=abch.lagMarker,sort=nearest,limit=1] abch.lagUUID1 = @s abch_lagUUID1 run say Found matching UUID! Killing previous lag marker.

### Summon new lag marker
summon minecraft:marker ~ ~ ~ {CustomName:'{"text":"abch.lagMarker"}',Tags:["abch.lagMarker","abch.marker","global.ignore","abch.newLag"]}

### Add owner player's UUID score to lag marker's UUID score for multiplayer compatibility
execute as @e[type=minecraft:marker,tag=abch.newLag] store result score @s abch.lagUUID1 run scoreboard players get @p abch.lagUUID1

tp @e[type=minecraft:marker,tag=abch.newLag] ~ ~ ~ ~ ~

### Removes new marker tag (abch.newLag) which was used to mark only the new marker
tag @e[type=minecraft:marker,tag=abch.newLag] remove abch.newLag

### End