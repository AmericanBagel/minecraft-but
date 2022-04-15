#> abchc:random/modifier_loop
# Loop through modifier count, enabling random modifier
# @within abchc:random/modifier_loop
# @context abchc:random/roll
# @input
#   score #loop abch.random
#       How many times to enable a modifier
#
# @output
#   score in abch.rng.max
#       Minimum random number to generate
#   score in1 abch.rng.max
#       Maximum random number to generate

#> Get random number
# Set minimum to 1, maximum to total modifier count
scoreboard players set in abch.rng.max 1
scoreboard players operation in1 abch.rng.math = $total_modifiers abch.toggle

# Get random number in specified range
function abchc:apis/rng/range

#> Enable random modifier
function abchc:random/tree/l3/l3_0

#> Decrement score
scoreboard players remove #loop abch.random 1

#> Loop
execute if score #loop abch.random matches 1.. run function abchc:random/modifier_loop

#execute if score out abch.rng.math matches 1 run scoreboard players set 2020_mode abch.random.toggle 1
#execute if score out abch.rng.math matches 2 run scoreboard players set anvil_rain abch.random.toggle 1
#execute if score out abch.rng.math matches 3 run scoreboard players set bedrock_touch abch.random.toggle 1
#execute if score out abch.rng.math matches 4 run scoreboard players set blinding_damage abch.random.toggle 1
#execute if score out abch.rng.math matches 5 run scoreboard players set blinding_light abch.random.toggle 1
#execute if score out abch.rng.math matches 6 run scoreboard players set blindness abch.random.toggle 1
#execute if score out abch.rng.math matches 7 run scoreboard players set botanophobia abch.random.toggle 1
#execute if score out abch.rng.math matches 8 run scoreboard players set carnivore abch.random.toggle 1
#execute if score out abch.rng.math matches 9 run scoreboard players set chunk_error abch.random.toggle 1
#execute if score out abch.rng.math matches 10 run scoreboard players set confetti_funeral abch.random.toggle 1
#execute if score out abch.rng.math matches 11 run scoreboard players set crawling abch.random.toggle 1
#execute if score out abch.rng.math matches 12 run scoreboard players set creeper_mobs abch.random.toggle 1
#execute if score out abch.rng.math matches 13 run scoreboard players set creeper_nukes abch.random.toggle 1
#execute if score out abch.rng.math matches 14 run scoreboard players set creeper_reinforcements abch.random.toggle 1
#execute if score out abch.rng.math matches 15 run scoreboard players set damage_nausea abch.random.toggle 1
#execute if score out abch.rng.math matches 16 run scoreboard players set deadly_colors abch.random.toggle 1
#execute if score out abch.rng.math matches 17 run scoreboard players set deadly_falls abch.random.toggle 1
#execute if score out abch.rng.math matches 18 run scoreboard players set death_orb abch.random.toggle 1
#execute if score out abch.rng.math matches 19 run scoreboard players set degradation abch.random.toggle 1
#execute if score out abch.rng.math matches 20 run scoreboard players set death_swap abch.random.toggle 1
#execute if score out abch.rng.math matches 21 run scoreboard players set delicate_explosives abch.random.toggle 1
#execute if score out abch.rng.math matches 22 run scoreboard players set effect_arrows abch.random.toggle 1
#execute if score out abch.rng.math matches 23 run scoreboard players set ender_blood abch.random.toggle 1
#execute if score out abch.rng.math matches 24 run scoreboard players set explosive_arrows abch.random.toggle 1
#execute if score out abch.rng.math matches 25 run scoreboard players set explosive_eggs abch.random.toggle 1
#execute if score out abch.rng.math matches 26 run scoreboard players set explosive_phantoms abch.random.toggle 1
#execute if score out abch.rng.math matches 27 run scoreboard players set explosive_sight abch.random.toggle 1
#execute if score out abch.rng.math matches 28 run scoreboard players set explosive_snowballs abch.random.toggle 1
#execute if score out abch.rng.math matches 29 run scoreboard players set explosive_xp abch.random.toggle 1
#execute if score out abch.rng.math matches 30 run scoreboard players set fast_arrows abch.random.toggle 1
#execute if score out abch.rng.math matches 31 run scoreboard players set feature_fanatic abch.random.toggle 1
#execute if score out abch.rng.math matches 32 run scoreboard players set fire_rain abch.random.toggle 1
#execute if score out abch.rng.math matches 33 run scoreboard players set fire_walker abch.random.toggle 1
#execute if score out abch.rng.math matches 34 run scoreboard players set frozen_time abch.random.toggle 1
#execute if score out abch.rng.math matches 35 run scoreboard players set herbivore abch.random.toggle 1
#execute if score out abch.rng.math matches 36 run scoreboard players set insta_creeper abch.random.toggle 1
#execute if score out abch.rng.math matches 37 run scoreboard players set keep_moving abch.random.toggle 1
#execute if score out abch.rng.math matches 38 run scoreboard players set lazy_inventory abch.random.toggle 1
#execute if score out abch.rng.math matches 39 run scoreboard players set lightning_storm abch.random.toggle 1
#execute if score out abch.rng.math matches 40 run scoreboard players set limited_inventory abch.random.toggle 1
#execute if score out abch.rng.math matches 41 run scoreboard players set look_straight abch.random.toggle 1
#execute if score out abch.rng.math matches 42 run scoreboard players set mermaid abch.random.toggle 1
#execute if score out abch.rng.math matches 43 run scoreboard players set midas_touch abch.random.toggle 1
#execute if score out abch.rng.math matches 44 run scoreboard players set mobs_glow abch.random.toggle 1
#execute if score out abch.rng.math matches 45 run scoreboard players set mobs_to_to_you abch.random.toggle 1
#execute if score out abch.rng.math matches 46 run scoreboard players set no_gravity abch.random.toggle 1
#execute if score out abch.rng.math matches 47 run scoreboard players set no_jump abch.random.toggle 1
#execute if score out abch.rng.math matches 48 run scoreboard players set no_sneak abch.random.toggle 1
#execute if score out abch.rng.math matches 49 run scoreboard players set no_walk abch.random.toggle 1
#execute if score out abch.rng.math matches 50 run scoreboard players set overworld_ghasts abch.random.toggle 1
#execute if score out abch.rng.math matches 51 run scoreboard players set pacifist abch.random.toggle 1
#execute if score out abch.rng.math matches 52 run scoreboard players set piglinator abch.random.toggle 1
#execute if score out abch.rng.math matches 53 run scoreboard players set players_glow abch.random.toggle 1
#execute if score out abch.rng.math matches 54 run scoreboard players set potion_food abch.random.toggle 1
#execute if score out abch.rng.math matches 55 run scoreboard players set random_effect abch.random.toggle 1
#execute if score out abch.rng.math matches 56 run scoreboard players set random_teleport abch.random.toggle 1
#execute if score out abch.rng.math matches 57 run scoreboard players set realistic_spiders abch.random.toggle 1
#execute if score out abch.rng.math matches 58 run scoreboard players set reverse_gravity abch.random.toggle 1
#execute if score out abch.rng.math matches 59 run scoreboard players set schlatt_mode abch.random.toggle 1
#execute if score out abch.rng.math matches 60 run scoreboard players set stacked_pigs abch.random.toggle 1
#execute if score out abch.rng.math matches 61 run scoreboard players set stick_together abch.random.toggle 1
#execute if score out abch.rng.math matches 62 run scoreboard players set superhot abch.random.toggle 1
#execute if score out abch.rng.math matches 63 run scoreboard players set suspicious_injury abch.random.toggle 1
#execute if score out abch.rng.math matches 64 run scoreboard players set teleport_chorus abch.random.toggle 1
#execute if score out abch.rng.math matches 65 run scoreboard players set tnt_bats abch.random.toggle 1
#execute if score out abch.rng.math matches 66 run scoreboard players set tnt_rain abch.random.toggle 1
#execute if score out abch.rng.math matches 67 run scoreboard players set toxic_water abch.random.toggle 1
#execute if score out abch.rng.math matches 68 run scoreboard players set tp_arrows abch.random.toggle 1
#execute if score out abch.rng.math matches 69 run scoreboard players set tp_sneak abch.random.toggle 1
#execute if score out abch.rng.math matches 70 run scoreboard players set toxic_water abch.random.toggle 1
#execute if score out abch.rng.math matches 71 run scoreboard players set troglodyte abch.random.toggle 1
#execute if score out abch.rng.math matches 72 run scoreboard players set unstable_inv abch.random.toggle 1
#execute if score out abch.rng.math matches 73 run scoreboard players set stick_together abch.random.toggle 1
#execute if score out abch.rng.math matches 74 run scoreboard players set volatile_creepers abch.random.toggle 1
#execute if score out abch.rng.math matches 75 run scoreboard players set walk_leveling abch.random.toggle 1
#execute if score out abch.rng.math matches 76 run scoreboard players set waning_wellness abch.random.toggle 1
#execute if score out abch.rng.math matches 77 run scoreboard players set yeet abch.random.toggle 1
#execute if score out abch.rng.math matches 78 run scoreboard players set ytpwyl abch.random.toggle 1