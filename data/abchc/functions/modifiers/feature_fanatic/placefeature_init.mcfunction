#> abchc:modifiers/feature_fanatic/placefeature_init
# Initialize placefeature by spawning marker, teleporting it,
# and running placefeature.
# @within abchc:modifiers/feature_fanatic/**
# @context player

summon marker ~ ~ ~ {Tags:["global.ignore","marker","abch","abch.feature_fanatic"],CustomName:'{"text":"abch.feature_fanatic"}'}
spreadplayers ~ ~ 5 40 false @e[type=marker,tag=abch.feature_fanatic]
execute as @e[type=marker,tag=abch.feature_fanatic] at @s run function abchc:modifiers/feature_fanatic/placefeature