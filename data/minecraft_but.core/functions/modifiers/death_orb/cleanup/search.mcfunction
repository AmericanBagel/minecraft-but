#> minecraft_but.core:modifiers/death_orb/search
#
# Search for players' unique, linked death orb
#
# @context death_orb.marker
#
# @within minecraft_but.core:modifiers/death_orb/**

# Set .search to death orb's sid
scoreboard players operation .search minecraft_but.death_orb.sid = @s minecraft_but.death_orb.sid

# Add this tag to death orb to select the right death orb
# in case `@e[type=marker,tag=minecraft_but.death_orb.marker,sort=nearest,limit=1]` is not the right player
tag @s add minecraft_but.death_orb.this

# If there is no linked player, kill the death orb
# with the player as `@s` and the death orb as `@e[type=marker,tag=minecraft_but.death_orb.this,sort=nearest,limit=1]`
# Distance 0.. to make death orb work across dimensions
execute as @a[ predicate=minecraft_but.core:modifiers/death_orb/sid, distance=0.. ] if score @s minecraft_but.death_orb.sid = .search minecraft_but.death_orb.sid run tag @e remove minecraft_but.death_orb.this
execute if entity @s[tag=minecraft_but.death_orb.this] run function minecraft_but.core:modifiers/death_orb/cleanup/cleanup

tag @s remove minecraft_but.death_orb.this