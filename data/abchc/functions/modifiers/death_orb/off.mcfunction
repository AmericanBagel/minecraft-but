#> abchc:modifiers/death_orb/off
# Clean up on modifier off
# @within abchc:modifiers/off

#> Kill markers
kill @e[tag=abch.death_orb]

#> Reset linking scoreboard
scoreboard players reset * abch.death_orb.sid

#> Try to remove forceloaded chunks
execute as @e[ name="abch.death_orb.forceload" ] at @s run function abchc:modifiers/death_orb/forceload/remove