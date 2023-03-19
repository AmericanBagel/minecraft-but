#> minecraft_but.coreraft_but.core:modifiers/random_structures/placefeature_init
# Initialize placefeature by spawning marker, teleporting it,
# and running placefeature.
# @within minecraft_but.coreraft_but.core:modifiers/random_structures/**
# @context player

summon marker ~ ~ ~ {Tags:["global.ignore","marker","minecraft_but","minecraft_but.random_structures"],CustomName:'{"text":"minecraft_but.random_structures"}'}
spreadplayers ~ ~ 5 100 false @e[type=marker,tag=minecraft_but.random_structures]