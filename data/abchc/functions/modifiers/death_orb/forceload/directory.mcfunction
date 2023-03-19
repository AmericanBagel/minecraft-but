#> abchc:modifiers/death_orb/forceload/directory
# Function for forceloading to prevent death orb
# from despawning while complying with
# MC Datapacks Conventions
# (see https://mc-datapacks.github.io/en/conventions/global_forceload_tag.html)
# for playing better with other data packs
# @context orb
# @within abchc:modifiers/death_orb/actions

#> Forceload current chunk death orb is in and spawn marker to manage removing forceload
function abchc:modifiers/death_orb/forceload/add

#> Remove forceloaded chunks death orb left while complying with MC Datapacks Conventions' guide on global forceloading tags
execute as @e[ name="abch.death_orb.forceload" ] at @s run function abchc:modifiers/death_orb/forceload/remove