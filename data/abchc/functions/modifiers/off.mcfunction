#> abchc:modifiers/off
#
# If modifiers are turned off, run off functions.
#
# This is for modifiers which need clean up after
# being turned off, including cleaning up
# lasting markers (markers which last more than one tick),
# removing old tags, and clearing scoreboards.
#
# This script is automatically generated.
#
# @within abchc:**
# @context root
# @input
#   score <modifier> abch.toggle
#       This represents any modifier's boolean value for if it is enabled or disabled.
#   score #<modifier> abch.toggle
#       The value of the modifier in the previous tick used for comparing to
#       current tick.

# If 2020_mode was on but is now off, run clean-up off function
execute if score #2020_mode abch.toggle matches 1 if score 2020_mode abch.toggle matches 0 run function abchc:modifiers/2020_mode/off
# Set its status to future old status
scoreboard players operation #2020_mode abch.toggle = 2020_mode abch.toggle

# If anvil_rain was on but is now off, run clean-up off function
execute if score #anvil_rain abch.toggle matches 1 if score anvil_rain abch.toggle matches 0 run function abchc:modifiers/anvil_rain/off
# Set its status to future old status
scoreboard players operation #anvil_rain abch.toggle = anvil_rain abch.toggle

# If botanophobia was on but is now off, run clean-up off function
execute if score #botanophobia abch.toggle matches 1 if score botanophobia abch.toggle matches 0 run function abchc:modifiers/botanophobia/off
# Set its status to future old status
scoreboard players operation #botanophobia abch.toggle = botanophobia abch.toggle

# If carnivore was on but is now off, run clean-up off function
execute if score #carnivore abch.toggle matches 1 if score carnivore abch.toggle matches 0 run function abchc:modifiers/carnivore/off
# Set its status to future old status
scoreboard players operation #carnivore abch.toggle = carnivore abch.toggle

# If crawling was on but is now off, run clean-up off function
execute if score #crawling abch.toggle matches 1 if score crawling abch.toggle matches 0 run function abchc:modifiers/crawling/off
# Set its status to future old status
scoreboard players operation #crawling abch.toggle = crawling abch.toggle

# If creeper_mobs was on but is now off, run clean-up off function
execute if score #creeper_mobs abch.toggle matches 1 if score creeper_mobs abch.toggle matches 0 run function abchc:modifiers/creeper_mobs/off
# Set its status to future old status
scoreboard players operation #creeper_mobs abch.toggle = creeper_mobs abch.toggle

# If creeper_nukes was on but is now off, run clean-up off function
execute if score #creeper_nukes abch.toggle matches 1 if score creeper_nukes abch.toggle matches 0 run function abchc:modifiers/creeper_nukes/off
# Set its status to future old status
scoreboard players operation #creeper_nukes abch.toggle = creeper_nukes abch.toggle

# If deadly_colors was on but is now off, run clean-up off function
execute if score #deadly_colors abch.toggle matches 1 if score deadly_colors abch.toggle matches 0 run function abchc:modifiers/deadly_colors/off
# Set its status to future old status
scoreboard players operation #deadly_colors abch.toggle = deadly_colors abch.toggle

# If death_swap was on but is now off, run clean-up off function
execute if score #death_swap abch.toggle matches 1 if score death_swap abch.toggle matches 0 run function abchc:modifiers/death_swap/off
# Set its status to future old status
scoreboard players operation #death_swap abch.toggle = death_swap abch.toggle

# If degradation was on but is now off, run clean-up off function
execute if score #degradation abch.toggle matches 1 if score degradation abch.toggle matches 0 run function abchc:modifiers/degradation/off
# Set its status to future old status
scoreboard players operation #degradation abch.toggle = degradation abch.toggle

# If explosive_arrows was on but is now off, run clean-up off function
execute if score #explosive_arrows abch.toggle matches 1 if score explosive_arrows abch.toggle matches 0 run function abchc:modifiers/explosive_arrows/off
# Set its status to future old status
scoreboard players operation #explosive_arrows abch.toggle = explosive_arrows abch.toggle

# If explosive_eggs was on but is now off, run clean-up off function
execute if score #explosive_eggs abch.toggle matches 1 if score explosive_eggs abch.toggle matches 0 run function abchc:modifiers/explosive_eggs/off
# Set its status to future old status
scoreboard players operation #explosive_eggs abch.toggle = explosive_eggs abch.toggle

# If explosive_phantoms was on but is now off, run clean-up off function
execute if score #explosive_phantoms abch.toggle matches 1 if score explosive_phantoms abch.toggle matches 0 run function abchc:modifiers/explosive_phantoms/off
# Set its status to future old status
scoreboard players operation #explosive_phantoms abch.toggle = explosive_phantoms abch.toggle

# If explosive_sight was on but is now off, run clean-up off function
execute if score #explosive_sight abch.toggle matches 1 if score explosive_sight abch.toggle matches 0 run function abchc:modifiers/explosive_sight/off
# Set its status to future old status
scoreboard players operation #explosive_sight abch.toggle = explosive_sight abch.toggle

# If explosive_arrows was on but is now off, run clean-up off function
execute if score #explosive_arrows abch.toggle matches 1 if score explosive_arrows abch.toggle matches 0 run function abchc:modifiers/explosive_arrows/off
# Set its status to future old status
scoreboard players operation #explosive_arrows abch.toggle = explosive_arrows abch.toggle

# If fire_walker was on but is now off, run clean-up off function
execute if score #fire_walker abch.toggle matches 1 if score fire_walker abch.toggle matches 0 run function abchc:modifiers/fire_walker/off
# Set its status to future old status
scoreboard players operation #fire_walker abch.toggle = fire_walker abch.toggle

# If herbivore was on but is now off, run clean-up off function
execute if score #herbivore abch.toggle matches 1 if score herbivore abch.toggle matches 0 run function abchc:modifiers/herbivore/off
# Set its status to future old status
scoreboard players operation #herbivore abch.toggle = herbivore abch.toggle

# If limited_inventory was on but is now off, run clean-up off function
execute if score #limited_inventory abch.toggle matches 1 if score limited_inventory abch.toggle matches 0 run function abchc:modifiers/limited_inventory/off
# Set its status to future old status
scoreboard players operation #limited_inventory abch.toggle = limited_inventory abch.toggle

# If look_straight was on but is now off, run clean-up off function
execute if score #look_straight abch.toggle matches 1 if score look_straight abch.toggle matches 0 run function abchc:modifiers/look_straight/off
# Set its status to future old status
scoreboard players operation #look_straight abch.toggle = look_straight abch.toggle

# If mermaid was on but is now off, run clean-up off function
execute if score #mermaid abch.toggle matches 1 if score mermaid abch.toggle matches 0 run function abchc:modifiers/mermaid/off
# Set its status to future old status
scoreboard players operation #mermaid abch.toggle = mermaid abch.toggle

# If no_gravity was on but is now off, run clean-up off function
execute if score #no_gravity abch.toggle matches 1 if score no_gravity abch.toggle matches 0 run function abchc:modifiers/no_gravity/off
# Set its status to future old status
scoreboard players operation #no_gravity abch.toggle = no_gravity abch.toggle

# If random was on but is now off, run clean-up off function
execute if score #random abch.toggle matches 1 if score random abch.toggle matches 0 run function abchc:modifiers/random/off
# Set its status to future old status
scoreboard players operation #random abch.toggle = random abch.toggle

# If random_structures was on but is now off, run clean-up off function
execute if score #random_structures abch.toggle matches 1 if score random_structures abch.toggle matches 0 run function abchc:modifiers/random_structures/off
# Set its status to future old status
scoreboard players operation #random_structures abch.toggle = random_structures abch.toggle

# If random_teleport was on but is now off, run clean-up off function
execute if score #random_teleport abch.toggle matches 1 if score random_teleport abch.toggle matches 0 run function abchc:modifiers/random_teleport/off
# Set its status to future old status
scoreboard players operation #random_teleport abch.toggle = random_teleport abch.toggle

# If tnt_bats was on but is now off, run clean-up off function
execute if score #tnt_bats abch.toggle matches 1 if score tnt_bats abch.toggle matches 0 run function abchc:modifiers/tnt_bats/off
# Set its status to future old status
scoreboard players operation #tnt_bats abch.toggle = tnt_bats abch.toggle

# If tnt_rain was on but is now off, run clean-up off function
execute if score #tnt_rain abch.toggle matches 1 if score tnt_rain abch.toggle matches 0 run function abchc:modifiers/tnt_rain/off
# Set its status to future old status
scoreboard players operation #tnt_rain abch.toggle = tnt_rain abch.toggle

# If toxic_water was on but is now off, run clean-up off function
execute if score #toxic_water abch.toggle matches 1 if score toxic_water abch.toggle matches 0 run function abchc:modifiers/toxic_water/off
# Set its status to future old status
scoreboard players operation #toxic_water abch.toggle = toxic_water abch.toggle

# If troglodyte was on but is now off, run clean-up off function
execute if score #troglodyte abch.toggle matches 1 if score troglodyte abch.toggle matches 0 run function abchc:modifiers/troglodyte/off
# Set its status to future old status
scoreboard players operation #troglodyte abch.toggle = troglodyte abch.toggle

# If blinding_damage was on but is now off, run clean-up off function
execute if score #blinding_damage abch.toggle matches 1 if score blinding_damage abch.toggle matches 0 run function abchc:modifiers/blinding_damage/off
# Set its status to future old status
scoreboard players operation #blinding_damage abch.toggle = blinding_damage abch.toggle

# If deadly_falls was on but is now off, run clean-up off function
execute if score #deadly_falls abch.toggle matches 1 if score deadly_falls abch.toggle matches 0 run function abchc:modifiers/deadly_falls/off
# Set its status to future old status
scoreboard players operation #deadly_falls abch.toggle = deadly_falls abch.toggle

# If keep_moving was on but is now off, run clean-up off function
execute if score #keep_moving abch.toggle matches 1 if score keep_moving abch.toggle matches 0 run function abchc:modifiers/keep_moving/off
# Set its status to future old status
scoreboard players operation #keep_moving abch.toggle = keep_moving abch.toggle

# If death_orb was on but is now off, run clean-up off function
execute if score #death_orb abch.toggle matches 1 if score death_orb abch.toggle matches 0 run function abchc:modifiers/death_orb/off
# Set its status to future old status
scoreboard players operation #death_orb abch.toggle = death_orb abch.toggle

# If fire_rain was on but is now off, run clean-up off function
execute if score #fire_rain abch.toggle matches 1 if score fire_rain abch.toggle matches 0 run function abchc:modifiers/fire_rain/off
# Set its status to future old status
scoreboard players operation #fire_rain abch.toggle = fire_rain abch.toggle

# If lightning_storm was on but is now off, run clean-up off function
execute if score #lightning_storm abch.toggle matches 1 if score lightning_storm abch.toggle matches 0 run function abchc:modifiers/lightning_storm/off
# Set its status to future old status
scoreboard players operation #lightning_storm abch.toggle = lightning_storm abch.toggle

# If chunk_error was on but is now off, run clean-up off function
execute if score #chunk_error abch.toggle matches 1 if score chunk_error abch.toggle matches 0 run function abchc:modifiers/chunk_error/off
# Set its status to future old status
scoreboard players operation #chunk_error abch.toggle = chunk_error abch.toggle

# If random_effects was on but is now off, run clean-up off function
execute if score #random_effects abch.toggle matches 1 if score random_effects abch.toggle matches 0 run function abchc:modifiers/random_effects/off
# Set its status to future old status
scoreboard players operation #random_effects abch.toggle = random_effects abch.toggle

# If suspicious_injury was on but is now off, run clean-up off function
execute if score #suspicious_injury abch.toggle matches 1 if score suspicious_injury abch.toggle matches 0 run function abchc:modifiers/suspicious_injury/off
# Set its status to future old status
scoreboard players operation #suspicious_injury abch.toggle = suspicious_injury abch.toggle

# If potion_food was on but is now off, run clean-up off function
execute if score #potion_food abch.toggle matches 1 if score potion_food abch.toggle matches 0 run function abchc:modifiers/potion_food/off
# Set its status to future old status
scoreboard players operation #potion_food abch.toggle = potion_food abch.toggle

# If glowing was on but is now off, run clean-up off function
execute if score #glowing abch.toggle matches 1 if score glowing abch.toggle matches 0 run function abchc:modifiers/glowing/off
# Set its status to future old status
scoreboard players operation #glowing abch.toggle = glowing abch.toggle

# If damage_nausea was on but is now off, run clean-up off function
execute if score #damage_nausea abch.toggle matches 1 if score damage_nausea abch.toggle matches 0 run function abchc:modifiers/damage_nausea/off
# Set its status to future old status
scoreboard players operation #damage_nausea abch.toggle = damage_nausea abch.toggle

# If blindness was on but is now off, run clean-up off function
execute if score #blindness abch.toggle matches 1 if score blindness abch.toggle matches 0 run function abchc:modifiers/blindness/off
# Set its status to future old status
scoreboard players operation #blindness abch.toggle = blindness abch.toggle

# If no_jump was on but is now off, run clean-up off function
execute if score #no_jump abch.toggle matches 1 if score no_jump abch.toggle matches 0 run function abchc:modifiers/no_jump/off
# Set its status to future old status
scoreboard players operation #no_jump abch.toggle = no_jump abch.toggle

# If no_sneak was on but is now off, run clean-up off function
execute if score #no_sneak abch.toggle matches 1 if score no_sneak abch.toggle matches 0 run function abchc:modifiers/no_sneak/off
# Set its status to future old status
scoreboard players operation #no_sneak abch.toggle = no_sneak abch.toggle

# If schlatt_mode was on but is now off, run clean-up off function
execute if score #schlatt_mode abch.toggle matches 1 if score schlatt_mode abch.toggle matches 0 run function abchc:modifiers/schlatt_mode/off
# Set its status to future old status
scoreboard players operation #schlatt_mode abch.toggle = schlatt_mode abch.toggle

# If pacifist was on but is now off, run clean-up off function
execute if score #pacifist abch.toggle matches 1 if score pacifist abch.toggle matches 0 run function abchc:modifiers/pacifist/off
# Set its status to future old status
scoreboard players operation #pacifist abch.toggle = pacifist abch.toggle

# If fast_arrows was on but is now off, run clean-up off function
execute if score #fast_arrows abch.toggle matches 1 if score fast_arrows abch.toggle matches 0 run function abchc:modifiers/fast_arrows/off
# Set its status to future old status
scoreboard players operation #fast_arrows abch.toggle = fast_arrows abch.toggle

# If confetti_funeral was on but is now off, run clean-up off function
execute if score #confetti_funeral abch.toggle matches 1 if score confetti_funeral abch.toggle matches 0 run function abchc:modifiers/confetti_funeral/off
# Set its status to future old status
scoreboard players operation #confetti_funeral abch.toggle = confetti_funeral abch.toggle

# If bedrock_touch was on but is now off, run clean-up off function
execute if score #bedrock_touch abch.toggle matches 1 if score bedrock_touch abch.toggle matches 0 run function abchc:modifiers/bedrock_touch/off
# Set its status to future old status
scoreboard players operation #bedrock_touch abch.toggle = bedrock_touch abch.toggle

# If midas_touch was on but is now off, run clean-up off function
execute if score #midas_touch abch.toggle matches 1 if score midas_touch abch.toggle matches 0 run function abchc:modifiers/midas_touch/off
# Set its status to future old status
scoreboard players operation #midas_touch abch.toggle = midas_touch abch.toggle

# If superhot was on but is now off, run clean-up off function
execute if score #superhot abch.toggle matches 1 if score superhot abch.toggle matches 0 run function abchc:modifiers/superhot/off
# Set its status to future old status
scoreboard players operation #superhot abch.toggle = superhot abch.toggle

# If frozen_time was on but is now off, run clean-up off function
execute if score #frozen_time abch.toggle matches 1 if score frozen_time abch.toggle matches 0 run function abchc:modifiers/frozen_time/off
# Set its status to future old status
scoreboard players operation #frozen_time abch.toggle = frozen_time abch.toggle

# If op_bats was on but is now off, run clean-up off function
execute if score #op_bats abch.toggle matches 1 if score op_bats abch.toggle matches 0 run function abchc:modifiers/op_bats/off
# Set its status to future old status
scoreboard players operation #op_bats abch.toggle = op_bats abch.toggle

# If overworld_ghasts was on but is now off, run clean-up off function
execute if score #overworld_ghasts abch.toggle matches 1 if score overworld_ghasts abch.toggle matches 0 run function abchc:modifiers/overworld_ghasts/off
# Set its status to future old status
scoreboard players operation #overworld_ghasts abch.toggle = overworld_ghasts abch.toggle

# If pigification was on but is now off, run clean-up off function
execute if score #pigification abch.toggle matches 1 if score pigification abch.toggle matches 0 run function abchc:modifiers/pigification/off
# Set its status to future old status
scoreboard players operation #pigification abch.toggle = pigification abch.toggle

# If piglinator was on but is now off, run clean-up off function
execute if score #piglinator abch.toggle matches 1 if score piglinator abch.toggle matches 0 run function abchc:modifiers/piglinator/off
# Set its status to future old status
scoreboard players operation #piglinator abch.toggle = piglinator abch.toggle

# If stacked_pigs was on but is now off, run clean-up off function
execute if score #stacked_pigs abch.toggle matches 1 if score stacked_pigs abch.toggle matches 0 run function abchc:modifiers/stacked_pigs/off
# Set its status to future old status
scoreboard players operation #stacked_pigs abch.toggle = stacked_pigs abch.toggle

# If realistic_spiders was on but is now off, run clean-up off function
execute if score #realistic_spiders abch.toggle matches 1 if score realistic_spiders abch.toggle matches 0 run function abchc:modifiers/realistic_spiders/off
# Set its status to future old status
scoreboard players operation #realistic_spiders abch.toggle = realistic_spiders abch.toggle

# If flying_skeletons was on but is now off, run clean-up off function
execute if score #flying_skeletons abch.toggle matches 1 if score flying_skeletons abch.toggle matches 0 run function abchc:modifiers/flying_skeletons/off
# Set its status to future old status
scoreboard players operation #flying_skeletons abch.toggle = flying_skeletons abch.toggle

# If mobs_tp_to_you was on but is now off, run clean-up off function
execute if score #mobs_tp_to_you abch.toggle matches 1 if score mobs_tp_to_you abch.toggle matches 0 run function abchc:modifiers/mobs_tp_to_you/off
# Set its status to future old status
scoreboard players operation #mobs_tp_to_you abch.toggle = mobs_tp_to_you abch.toggle

# If ender_blood was on but is now off, run clean-up off function
execute if score #ender_blood abch.toggle matches 1 if score ender_blood abch.toggle matches 0 run function abchc:modifiers/ender_blood/off
# Set its status to future old status
scoreboard players operation #ender_blood abch.toggle = ender_blood abch.toggle

# If teleport_chorus was on but is now off, run clean-up off function
execute if score #teleport_chorus abch.toggle matches 1 if score teleport_chorus abch.toggle matches 0 run function abchc:modifiers/teleport_chorus/off
# Set its status to future old status
scoreboard players operation #teleport_chorus abch.toggle = teleport_chorus abch.toggle

# If yeet was on but is now off, run clean-up off function
execute if score #yeet abch.toggle matches 1 if score yeet abch.toggle matches 0 run function abchc:modifiers/yeet/off
# Set its status to future old status
scoreboard players operation #yeet abch.toggle = yeet abch.toggle

# If waning_wellness was on but is now off, run clean-up off function
execute if score #waning_wellness abch.toggle matches 1 if score waning_wellness abch.toggle matches 0 run function abchc:modifiers/waning_wellness/off
# Set its status to future old status
scoreboard players operation #waning_wellness abch.toggle = waning_wellness abch.toggle

# If walk_leveling was on but is now off, run clean-up off function
execute if score #walk_leveling abch.toggle matches 1 if score walk_leveling abch.toggle matches 0 run function abchc:modifiers/walk_leveling/off
# Set its status to future old status
scoreboard players operation #walk_leveling abch.toggle = walk_leveling abch.toggle

# If volatile_creepers was on but is now off, run clean-up off function
execute if score #volatile_creepers abch.toggle matches 1 if score volatile_creepers abch.toggle matches 0 run function abchc:modifiers/volatile_creepers/off
# Set its status to future old status
scoreboard players operation #volatile_creepers abch.toggle = volatile_creepers abch.toggle

# If unstable_inv was on but is now off, run clean-up off function
execute if score #unstable_inv abch.toggle matches 1 if score unstable_inv abch.toggle matches 0 run function abchc:modifiers/unstable_inv/off
# Set its status to future old status
scoreboard players operation #unstable_inv abch.toggle = unstable_inv abch.toggle

# If tp_arrows was on but is now off, run clean-up off function
execute if score #tp_arrows abch.toggle matches 1 if score tp_arrows abch.toggle matches 0 run function abchc:modifiers/tp_arrows/off
# Set its status to future old status
scoreboard players operation #tp_arrows abch.toggle = tp_arrows abch.toggle

