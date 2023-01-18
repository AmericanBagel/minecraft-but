#> abchc:modifiers/random_structures/pick_place
# Choose which subfunction of /place to use
# @within abchc:modifiers/random_structures/start_loop_default
# @context player

scoreboard players set in abch.rng.math 1
scoreboard players set in1 abch.rng.math 3
function abchc:apis/rng/range

execute if score out abch.rng.math matches 1 run function abchc:modifiers/random_structures/place_feature
execute if score out abch.rng.math matches 2 run function abchc:modifiers/random_structures/place_structure

# Not doing jigsaw! <target> makes it WAY too much work! I'd basically have to hardcode it! Besides, spawning in whole structures is more exciting anyway!