#> abchc:modifiers/manual
# Run modifiers if they're enabled on manual mode
# @within abchc:modifiers/directory
# @context root

#> Update modifier total
#function abchc:modifiers/manual_total

#> Run modifiers
execute if score 2020_mode abch.toggle matches 1 run function abchc:modifiers/2020_mode/main
execute if score anvil_rain abch.toggle matches 1 run function abchc:modifiers/anvil_rain/main
execute if score botanophobia abch.toggle matches 1 run function abchc:modifiers/botanophobia/main
execute if score carnivore abch.toggle matches 1 run function abchc:modifiers/carnivore/main
execute if score crawling abch.toggle matches 1 run function abchc:modifiers/crawling/main
execute if score creeper_mobs abch.toggle matches 1 run function abchc:modifiers/creeper_mobs/main
execute if score creeper_nukes abch.toggle matches 1 run function abchc:modifiers/creeper_nukes/main
execute if score deadly_colors abch.toggle matches 1 run function abchc:modifiers/deadly_colors/main
execute if score death_swap abch.toggle matches 1 run function abchc:modifiers/death_swap/main
execute if score degradation abch.toggle matches 1 run function abchc:modifiers/degradation/main
execute if score explosive_arrows abch.toggle matches 1 run function abchc:modifiers/explosive_arrows/main
execute if score explosive_eggs abch.toggle matches 1 run function abchc:modifiers/explosive_eggs/main
execute if score explosive_phantoms abch.toggle matches 1 run function abchc:modifiers/explosive_phantoms/main
execute if score explosive_sight abch.toggle matches 1 run function abchc:modifiers/explosive_sight/main
execute if score explosive_arrows abch.toggle matches 1 run function abchc:modifiers/explosive_arrows/main
execute if score fire_walker abch.toggle matches 1 run function abchc:modifiers/fire_walker/main
execute if score herbivore abch.toggle matches 1 run function abchc:modifiers/herbivore/main
execute if score limited_inventory abch.toggle matches 1 run function abchc:modifiers/limited_inventory/main
execute if score look_straight abch.toggle matches 1 run function abchc:modifiers/look_straight/main
execute if score mermaid abch.toggle matches 1 run function abchc:modifiers/mermaid/main
execute if score no_gravity abch.toggle matches 1 run function abchc:modifiers/no_gravity/main
execute if score random abch.toggle matches 1 run function abchc:modifiers/random/main
execute if score random_structures abch.toggle matches 1 run function abchc:modifiers/random_structures/main
execute if score random_teleport abch.toggle matches 1 run function abchc:modifiers/random_teleport/main
execute if score tnt_bats abch.toggle matches 1 run function abchc:modifiers/tnt_bats/main
execute if score tnt_rain abch.toggle matches 1 run function abchc:modifiers/tnt_rain/main
execute if score toxic_water abch.toggle matches 1 run function abchc:modifiers/toxic_water/main
execute if score troglodyte abch.toggle matches 1 run function abchc:modifiers/troglodyte/main
execute if score blinding_damage abch.toggle matches 1 run function abchc:modifiers/blinding_damage/main
execute if score deadly_falls abch.toggle matches 1 run function abchc:modifiers/deadly_falls/main
execute if score keep_moving abch.toggle matches 1 run function abchc:modifiers/keep_moving/main
execute if score death_orb abch.toggle matches 1 run function abchc:modifiers/death_orb/main
execute if score fire_rain abch.toggle matches 1 run function abchc:modifiers/fire_rain/main
execute if score lightning_storm abch.toggle matches 1 run function abchc:modifiers/lightning_storm/main
execute if score chunk_error abch.toggle matches 1 run function abchc:modifiers/chunk_error/main
execute if score random_effects abch.toggle matches 1 run function abchc:modifiers/random_effects/main
execute if score suspicious_injury abch.toggle matches 1 run function abchc:modifiers/suspicious_injury/main
execute if score potion_food abch.toggle matches 1 run function abchc:modifiers/potion_food/main
execute if score glowing abch.toggle matches 1 run function abchc:modifiers/glowing/main
execute if score damage_nausea abch.toggle matches 1 run function abchc:modifiers/damage_nausea/main
execute if score blindness abch.toggle matches 1 run function abchc:modifiers/blindness/main
execute if score no_jump abch.toggle matches 1 run function abchc:modifiers/no_jump/main
execute if score no_sneak abch.toggle matches 1 run function abchc:modifiers/no_sneak/main
execute if score schlatt_mode abch.toggle matches 1 run function abchc:modifiers/schlatt_mode/main
execute if score pacifist abch.toggle matches 1 run function abchc:modifiers/pacifist/main
execute if score fast_arrows abch.toggle matches 1 run function abchc:modifiers/fast_arrows/main
execute if score confetti_funeral abch.toggle matches 1 run function abchc:modifiers/confetti_funeral/main
execute if score bedrock_touch abch.toggle matches 1 run function abchc:modifiers/bedrock_touch/main
execute if score midas_touch abch.toggle matches 1 run function abchc:modifiers/midas_touch/main
execute if score superhot abch.toggle matches 1 run function abchc:modifiers/superhot/main
execute if score frozen_time abch.toggle matches 1 run function abchc:modifiers/frozen_time/main
execute if score op_bats abch.toggle matches 1 run function abchc:modifiers/op_bats/main
execute if score overworld_ghasts abch.toggle matches 1 run function abchc:modifiers/overworld_ghasts/main
execute if score pigification abch.toggle matches 1 run function abchc:modifiers/pigification/main
execute if score piglinator abch.toggle matches 1 run function abchc:modifiers/piglinator/main
execute if score stacked_pigs abch.toggle matches 1 run function abchc:modifiers/stacked_pigs/main
execute if score realistic_spiders abch.toggle matches 1 run function abchc:modifiers/realistic_spiders/main
execute if score flying_skeletons abch.toggle matches 1 run function abchc:modifiers/flying_skeletons/main
execute if score mobs_tp_to_you abch.toggle matches 1 run function abchc:modifiers/mobs_tp_to_you/main
execute if score ender_blood abch.toggle matches 1 run function abchc:modifiers/ender_blood/main
execute if score teleport_chorus abch.toggle matches 1 run function abchc:modifiers/teleport_chorus/main
execute if score yeet abch.toggle matches 1 run function abchc:modifiers/yeet/main
execute if score waning_wellness abch.toggle matches 1 run function abchc:modifiers/waning_wellness/main
execute if score walk_leveling abch.toggle matches 1 run function abchc:modifiers/walk_leveling/main
execute if score volatile_creepers abch.toggle matches 1 run function abchc:modifiers/volatile_creepers/main
execute if score unstable_inv abch.toggle matches 1 run function abchc:modifiers/unstable_inv/main
execute if score tp_arrows abch.toggle matches 1 run function abchc:modifiers/tp_arrows/main
