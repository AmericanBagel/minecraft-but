#> minecraft_but.core:random/modifier_loop
# Loop through modifier count, enabling random modifier
# @within minecraft_but.core:random/modifier_loop
# @context minecraft_but.core:random/roll
# @input
#   score #loop minecraft_but.random
#       How many times to enable a modifier
#
# @output
#   score in minecraft_but.rng.max
#       Minimum random number to generate
#   score in1 minecraft_but.rng.max
#       Maximum random number to generate

#> Get random number
# Set minimum to 1, maximum to total modifier count
scoreboard players set in minecraft_but.rng.max 1
scoreboard players operation $max random = #total_modifiers minecraft_but.toggle

# Get random number in specified range
function random:uniform

#> Enable random modifier
function minecraft_but.core:random/enable_modifier

#> Decrement score
scoreboard players remove #loop minecraft_but.random 1

#> Loop
execute if score #loop minecraft_but.random matches 1.. run function minecraft_but.core:random/modifier_loop

#execute if score $out random matches 1 run scoreboard players set 2020_mode minecraft_but.random.toggle 1
#execute if score $out random matches 2 run scoreboard players set anvil_rain minecraft_but.random.toggle 1
#execute if score $out random matches 3 run scoreboard players set bedrock_touch minecraft_but.random.toggle 1
#execute if score $out random matches 4 run scoreboard players set blinding_damage minecraft_but.random.toggle 1
#execute if score $out random matches 5 run scoreboard players set blinding_light minecraft_but.random.toggle 1
#execute if score $out random matches 6 run scoreboard players set blindness minecraft_but.random.toggle 1
#execute if score $out random matches 7 run scoreboard players set botanophobia minecraft_but.random.toggle 1
#execute if score $out random matches 8 run scoreboard players set carnivore minecraft_but.random.toggle 1
#execute if score $out random matches 9 run scoreboard players set chunk_error minecraft_but.random.toggle 1
#execute if score $out random matches 10 run scoreboard players set confetti_funeral minecraft_but.random.toggle 1
#execute if score $out random matches 11 run scoreboard players set crawling minecraft_but.random.toggle 1
#execute if score $out random matches 12 run scoreboard players set creeper_mobs minecraft_but.random.toggle 1
#execute if score $out random matches 13 run scoreboard players set creeper_nukes minecraft_but.random.toggle 1
#execute if score $out random matches 14 run scoreboard players set creeper_reinforcements minecraft_but.random.toggle 1
#execute if score $out random matches 15 run scoreboard players set damage_nausea minecraft_but.random.toggle 1
#execute if score $out random matches 16 run scoreboard players set deadly_colors minecraft_but.random.toggle 1
#execute if score $out random matches 17 run scoreboard players set deadly_falls minecraft_but.random.toggle 1
#execute if score $out random matches 18 run scoreboard players set death_orb minecraft_but.random.toggle 1
#execute if score $out random matches 19 run scoreboard players set degradation minecraft_but.random.toggle 1
#execute if score $out random matches 20 run scoreboard players set death_swap minecraft_but.random.toggle 1
#execute if score $out random matches 21 run scoreboard players set delicate_explosives minecraft_but.random.toggle 1
#execute if score $out random matches 22 run scoreboard players set effect_arrows minecraft_but.random.toggle 1
#execute if score $out random matches 23 run scoreboard players set ender_blood minecraft_but.random.toggle 1
#execute if score $out random matches 24 run scoreboard players set explosive_arrows minecraft_but.random.toggle 1
#execute if score $out random matches 25 run scoreboard players set explosive_eggs minecraft_but.random.toggle 1
#execute if score $out random matches 26 run scoreboard players set explosive_phantoms minecraft_but.random.toggle 1
#execute if score $out random matches 27 run scoreboard players set explosive_sight minecraft_but.random.toggle 1
#execute if score $out random matches 28 run scoreboard players set explosive_snowballs minecraft_but.random.toggle 1
#execute if score $out random matches 29 run scoreboard players set explosive_xp minecraft_but.random.toggle 1
#execute if score $out random matches 30 run scoreboard players set fast_arrows minecraft_but.random.toggle 1
#execute if score $out random matches 31 run scoreboard players set random_structures minecraft_but.random.toggle 1
#execute if score $out random matches 32 run scoreboard players set fire_rain minecraft_but.random.toggle 1
#execute if score $out random matches 33 run scoreboard players set fire_walker minecraft_but.random.toggle 1
#execute if score $out random matches 34 run scoreboard players set frozen_time minecraft_but.random.toggle 1
#execute if score $out random matches 35 run scoreboard players set herbivore minecraft_but.random.toggle 1
#execute if score $out random matches 36 run scoreboard players set insta_creeper minecraft_but.random.toggle 1
#execute if score $out random matches 37 run scoreboard players set keep_moving minecraft_but.random.toggle 1
#execute if score $out random matches 38 run scoreboard players set lazy_inventory minecraft_but.random.toggle 1
#execute if score $out random matches 39 run scoreboard players set lightning_storm minecraft_but.random.toggle 1
#execute if score $out random matches 40 run scoreboard players set limited_inventory minecraft_but.random.toggle 1
#execute if score $out random matches 41 run scoreboard players set look_straight minecraft_but.random.toggle 1
#execute if score $out random matches 42 run scoreboard players set mermaid minecraft_but.random.toggle 1
#execute if score $out random matches 43 run scoreboard players set midas_touch minecraft_but.random.toggle 1
#execute if score $out random matches 44 run scoreboard players set mobs_glow minecraft_but.random.toggle 1
#execute if score $out random matches 45 run scoreboard players set mobs_to_to_you minecraft_but.random.toggle 1
#execute if score $out random matches 46 run scoreboard players set no_gravity minecraft_but.random.toggle 1
#execute if score $out random matches 47 run scoreboard players set no_jump minecraft_but.random.toggle 1
#execute if score $out random matches 48 run scoreboard players set no_sneak minecraft_but.random.toggle 1
#execute if score $out random matches 49 run scoreboard players set no_walk minecraft_but.random.toggle 1
#execute if score $out random matches 50 run scoreboard players set overworld_ghasts minecraft_but.random.toggle 1
#execute if score $out random matches 51 run scoreboard players set pacifist minecraft_but.random.toggle 1
#execute if score $out random matches 52 run scoreboard players set piglinator minecraft_but.random.toggle 1
#execute if score $out random matches 53 run scoreboard players set players_glow minecraft_but.random.toggle 1
#execute if score $out random matches 54 run scoreboard players set potion_food minecraft_but.random.toggle 1
#execute if score $out random matches 55 run scoreboard players set random_effect minecraft_but.random.toggle 1
#execute if score $out random matches 56 run scoreboard players set random_teleport minecraft_but.random.toggle 1
#execute if score $out random matches 57 run scoreboard players set realistic_spiders minecraft_but.random.toggle 1
#execute if score $out random matches 58 run scoreboard players set reverse_gravity minecraft_but.random.toggle 1
#execute if score $out random matches 59 run scoreboard players set schlatt_mode minecraft_but.random.toggle 1
#execute if score $out random matches 60 run scoreboard players set stacked_pigs minecraft_but.random.toggle 1
#execute if score $out random matches 61 run scoreboard players set stick_together minecraft_but.random.toggle 1
#execute if score $out random matches 62 run scoreboard players set superhot minecraft_but.random.toggle 1
#execute if score $out random matches 63 run scoreboard players set suspicious_injury minecraft_but.random.toggle 1
#execute if score $out random matches 64 run scoreboard players set teleport_chorus minecraft_but.random.toggle 1
#execute if score $out random matches 65 run scoreboard players set tnt_bats minecraft_but.random.toggle 1
#execute if score $out random matches 66 run scoreboard players set tnt_rain minecraft_but.random.toggle 1
#execute if score $out random matches 67 run scoreboard players set toxic_water minecraft_but.random.toggle 1
#execute if score $out random matches 68 run scoreboard players set tp_arrows minecraft_but.random.toggle 1
#execute if score $out random matches 69 run scoreboard players set tp_sneak minecraft_but.random.toggle 1
#execute if score $out random matches 70 run scoreboard players set toxic_water minecraft_but.random.toggle 1
#execute if score $out random matches 71 run scoreboard players set troglodyte minecraft_but.random.toggle 1
#execute if score $out random matches 72 run scoreboard players set unstable_inv minecraft_but.random.toggle 1
#execute if score $out random matches 73 run scoreboard players set stick_together minecraft_but.random.toggle 1
#execute if score $out random matches 74 run scoreboard players set volatile_creepers minecraft_but.random.toggle 1
#execute if score $out random matches 75 run scoreboard players set walk_leveling minecraft_but.random.toggle 1
#execute if score $out random matches 76 run scoreboard players set waning_wellness minecraft_but.random.toggle 1
#execute if score $out random matches 77 run scoreboard players set yeet minecraft_but.random.toggle 1
#execute if score $out random matches 78 run scoreboard players set ytpwyl minecraft_but.random.toggle 1