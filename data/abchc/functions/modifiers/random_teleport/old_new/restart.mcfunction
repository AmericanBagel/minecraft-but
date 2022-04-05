#> abchc:modifiers/random_teleport/tp/restart
# Ground was not found, so restart by randomly teleporting around again and retrying
# @within abchc:modifiers/random_teleport/compare
# @context player

#> Reset old scores
scoreboard players reset $down_distance abch.random_teleport
scoreboard players reset $up_distance abch.random_teleport
scoreboard players reset $down_grounded abch.random_teleport
scoreboard players reset $up_grounded abch.random_teleport
scoreboard players reset $limit abch.random_teleport

#> Kill markers
kill @e[ tag=abch.random_teleport ]

#> Add try
scoreboard players add $tries abch.random_teleport 1

#> Mama mia! Here we go again!
function abchc:modifiers/random_teleport/tp/start_search