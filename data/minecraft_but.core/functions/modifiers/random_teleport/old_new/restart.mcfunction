#> minecraft_but.coreraft_but.core:modifiers/random_teleport/tp/restart
# Ground was not found, so restart by randomly teleporting around again and retrying
# @within minecraft_but.coreraft_but.core:modifiers/random_teleport/compare
# @context player

#> Reset old scores
scoreboard players reset $down_distance minecraft_but.random_teleport
scoreboard players reset $up_distance minecraft_but.random_teleport
scoreboard players reset $down_grounded minecraft_but.random_teleport
scoreboard players reset $up_grounded minecraft_but.random_teleport
scoreboard players reset $limit minecraft_but.random_teleport

#> Kill markers
kill @e[ tag=minecraft_but.random_teleport ]

#> Add try
scoreboard players add $tries minecraft_but.random_teleport 1

#> Mama mia! Here we go again!
function minecraft_but.coreraft_but.core:modifiers/random_teleport/tp/start_search