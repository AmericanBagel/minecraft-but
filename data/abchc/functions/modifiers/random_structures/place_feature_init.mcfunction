#> abchc:modifiers/random_structures/placefeature_init
# Initialize placefeature by spawning marker, teleporting it,
# and running placefeature.
# @within abchc:modifiers/random_structures/**
# @context player

summon marker ~ ~ ~ {Tags:["global.ignore","marker","abch","abch.random_structures"],CustomName:'{"text":"abch.random_structures"}'}
spreadplayers ~ ~ 5 40 false @e[type=marker,tag=abch.random_structures]
execute as @e[type=marker,tag=abch.random_structures] at @s run function abchc:modifiers/random_structures/place_feature