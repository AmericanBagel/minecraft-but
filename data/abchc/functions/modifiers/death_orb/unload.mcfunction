#> abchc:modifiers/death_orb/unload
# @within abchc:modifiers/unload

#> Remove scoreboards
scoreboard objectives remove abch.death_orb.sid
scoreboard objectives remove abch.death_orb.distance
scoreboard objectives remove abch.death_orb.factor
scoreboard objectives remove abch.death_orb

#> Remove forceloaded chunks
execute as @e[ name="abch.death_orb.forceload" ] at @s run function abchc:modifiers/death_orb/forceload/remove
kill @e[type=marker,tag=abch.death_orb]