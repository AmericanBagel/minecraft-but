#> minecraft_but.coreraft_but.core:modifiers/death_orb/off
# Clean up on modifier off
# @within minecraft_but.coreraft_but.core:modifiers/off

#> Kill markers
kill @e[tag=minecraft_but.death_orb]

#> Reset linking scoreboard
scoreboard players reset * minecraft_but.death_orb.sid

#> Try to remove forceloaded chunks
execute as @e[ name="minecraft_but.death_orb.forceload" ] at @s run minecraft_but.coreion minecraft_but.core:modifiers/death_orb/forceload/remove