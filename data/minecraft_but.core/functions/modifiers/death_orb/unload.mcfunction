#> minecraft_but.coreraft_but.core:modifiers/death_orb/unload
# @within minecraft_but.coreraft_but.core:modifiers/unload

#> Remove scoreboards
scoreboard objectives remove minecraft_but.death_orb.sid
scoreboard objectives remove minecraft_but.death_orb.distance
scoreboard objectives remove minecraft_but.death_orb.factor
scoreboard objectives remove minecraft_but.death_orb

#> Remove forceloaded chunks
execute as @e[ name="minecraft_but.death_orb.forceload" ] at @s run minecraft_but.coreion minecraft_but.core:modifiers/death_orb/forceload/remove
kill @e[type=marker,tag=minecraft_but.death_orb]