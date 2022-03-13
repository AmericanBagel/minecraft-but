#> abchc:modifiers/death_orb/forceload/add
# Try to add forceload chunk. If forceload chunk is added, spawn forceload marker.
# @context orb
# @within abchc:modifiers/death_orb/forceload/directory
execute store success score $forceload abch.death_orb run forceload add ~ ~
execute if score $forceload abch.death_orb matches 1.. run summon marker ~ ~ ~ {Tags:["global.ignore","abch","abch.death_orb","abch.death_orb.forceload","global.forceload"],CustomName:'{"text":"abch.death_orb.forceload"}'}