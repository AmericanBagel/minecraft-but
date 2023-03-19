#> minecraft_but.core:modifiers/off
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
# @within minecraft_but.core:**
# @context root
# @input
#   score <modifier> minecraft_but.toggle
#       This represents any modifier's boolean value for if it is enabled or disabled.
#   score #<modifier> minecraft_but.toggle
#       The value of the modifier in the previous tick used for comparing to
#       current tick.

# If 2020_mode was on but is now off, run clean-up off function
execute if score #2020_mode minecraft_but.toggle matches 1 if score 2020_mode minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/2020_mode/off
# Set its status to future old status
scoreboard players operation #2020_mode minecraft_but.toggle = 2020_mode minecraft_but.toggle

# If anvil_rain was on but is now off, run clean-up off function
execute if score #anvil_rain minecraft_but.toggle matches 1 if score anvil_rain minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/anvil_rain/off
# Set its status to future old status
scoreboard players operation #anvil_rain minecraft_but.toggle = anvil_rain minecraft_but.toggle

# If bedrock_touch was on but is now off, run clean-up off function
execute if score #bedrock_touch minecraft_but.toggle matches 1 if score bedrock_touch minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/bedrock_touch/off
# Set its status to future old status
scoreboard players operation #bedrock_touch minecraft_but.toggle = bedrock_touch minecraft_but.toggle

# If blinding_damage was on but is now off, run clean-up off function
execute if score #blinding_damage minecraft_but.toggle matches 1 if score blinding_damage minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/blinding_damage/off
# Set its status to future old status
scoreboard players operation #blinding_damage minecraft_but.toggle = blinding_damage minecraft_but.toggle

# If blindness was on but is now off, run clean-up off function
execute if score #blindness minecraft_but.toggle matches 1 if score blindness minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/blindness/off
# Set its status to future old status
scoreboard players operation #blindness minecraft_but.toggle = blindness minecraft_but.toggle

# If botanophobia was on but is now off, run clean-up off function
execute if score #botanophobia minecraft_but.toggle matches 1 if score botanophobia minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/botanophobia/off
# Set its status to future old status
scoreboard players operation #botanophobia minecraft_but.toggle = botanophobia minecraft_but.toggle

# If carnivore was on but is now off, run clean-up off function
execute if score #carnivore minecraft_but.toggle matches 1 if score carnivore minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/carnivore/off
# Set its status to future old status
scoreboard players operation #carnivore minecraft_but.toggle = carnivore minecraft_but.toggle

# If chunk_error was on but is now off, run clean-up off function
execute if score #chunk_error minecraft_but.toggle matches 1 if score chunk_error minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/chunk_error/off
# Set its status to future old status
scoreboard players operation #chunk_error minecraft_but.toggle = chunk_error minecraft_but.toggle

# If confetti_funeral was on but is now off, run clean-up off function
execute if score #confetti_funeral minecraft_but.toggle matches 1 if score confetti_funeral minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/confetti_funeral/off
# Set its status to future old status
scoreboard players operation #confetti_funeral minecraft_but.toggle = confetti_funeral minecraft_but.toggle

# If crawling was on but is now off, run clean-up off function
execute if score #crawling minecraft_but.toggle matches 1 if score crawling minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/crawling/off
# Set its status to future old status
scoreboard players operation #crawling minecraft_but.toggle = crawling minecraft_but.toggle

# If creeper_mobs was on but is now off, run clean-up off function
execute if score #creeper_mobs minecraft_but.toggle matches 1 if score creeper_mobs minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/creeper_mobs/off
# Set its status to future old status
scoreboard players operation #creeper_mobs minecraft_but.toggle = creeper_mobs minecraft_but.toggle

# If creeper_nukes was on but is now off, run clean-up off function
execute if score #creeper_nukes minecraft_but.toggle matches 1 if score creeper_nukes minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/creeper_nukes/off
# Set its status to future old status
scoreboard players operation #creeper_nukes minecraft_but.toggle = creeper_nukes minecraft_but.toggle

# If damage_nausea was on but is now off, run clean-up off function
execute if score #damage_nausea minecraft_but.toggle matches 1 if score damage_nausea minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/damage_nausea/off
# Set its status to future old status
scoreboard players operation #damage_nausea minecraft_but.toggle = damage_nausea minecraft_but.toggle

# If deadly_colors was on but is now off, run clean-up off function
execute if score #deadly_colors minecraft_but.toggle matches 1 if score deadly_colors minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/deadly_colors/off
# Set its status to future old status
scoreboard players operation #deadly_colors minecraft_but.toggle = deadly_colors minecraft_but.toggle

# If deadly_falls was on but is now off, run clean-up off function
execute if score #deadly_falls minecraft_but.toggle matches 1 if score deadly_falls minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/deadly_falls/off
# Set its status to future old status
scoreboard players operation #deadly_falls minecraft_but.toggle = deadly_falls minecraft_but.toggle

# If death_orb was on but is now off, run clean-up off function
execute if score #death_orb minecraft_but.toggle matches 1 if score death_orb minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/death_orb/off
# Set its status to future old status
scoreboard players operation #death_orb minecraft_but.toggle = death_orb minecraft_but.toggle

# If death_swap was on but is now off, run clean-up off function
execute if score #death_swap minecraft_but.toggle matches 1 if score death_swap minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/death_swap/off
# Set its status to future old status
scoreboard players operation #death_swap minecraft_but.toggle = death_swap minecraft_but.toggle

# If degradation was on but is now off, run clean-up off function
execute if score #degradation minecraft_but.toggle matches 1 if score degradation minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/degradation/off
# Set its status to future old status
scoreboard players operation #degradation minecraft_but.toggle = degradation minecraft_but.toggle

# If ender_blood was on but is now off, run clean-up off function
execute if score #ender_blood minecraft_but.toggle matches 1 if score ender_blood minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/ender_blood/off
# Set its status to future old status
scoreboard players operation #ender_blood minecraft_but.toggle = ender_blood minecraft_but.toggle

# If explosive_arrows was on but is now off, run clean-up off function
execute if score #explosive_arrows minecraft_but.toggle matches 1 if score explosive_arrows minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/explosive_arrows/off
# Set its status to future old status
scoreboard players operation #explosive_arrows minecraft_but.toggle = explosive_arrows minecraft_but.toggle

# If explosive_arrows was on but is now off, run clean-up off function
execute if score #explosive_arrows minecraft_but.toggle matches 1 if score explosive_arrows minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/explosive_arrows/off
# Set its status to future old status
scoreboard players operation #explosive_arrows minecraft_but.toggle = explosive_arrows minecraft_but.toggle

# If explosive_eggs was on but is now off, run clean-up off function
execute if score #explosive_eggs minecraft_but.toggle matches 1 if score explosive_eggs minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/explosive_eggs/off
# Set its status to future old status
scoreboard players operation #explosive_eggs minecraft_but.toggle = explosive_eggs minecraft_but.toggle

# If explosive_phantoms was on but is now off, run clean-up off function
execute if score #explosive_phantoms minecraft_but.toggle matches 1 if score explosive_phantoms minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/explosive_phantoms/off
# Set its status to future old status
scoreboard players operation #explosive_phantoms minecraft_but.toggle = explosive_phantoms minecraft_but.toggle

# If explosive_sight was on but is now off, run clean-up off function
execute if score #explosive_sight minecraft_but.toggle matches 1 if score explosive_sight minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/explosive_sight/off
# Set its status to future old status
scoreboard players operation #explosive_sight minecraft_but.toggle = explosive_sight minecraft_but.toggle

# If fast_arrows was on but is now off, run clean-up off function
execute if score #fast_arrows minecraft_but.toggle matches 1 if score fast_arrows minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/fast_arrows/off
# Set its status to future old status
scoreboard players operation #fast_arrows minecraft_but.toggle = fast_arrows minecraft_but.toggle

# If fire_rain was on but is now off, run clean-up off function
execute if score #fire_rain minecraft_but.toggle matches 1 if score fire_rain minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/fire_rain/off
# Set its status to future old status
scoreboard players operation #fire_rain minecraft_but.toggle = fire_rain minecraft_but.toggle

# If fire_walker was on but is now off, run clean-up off function
execute if score #fire_walker minecraft_but.toggle matches 1 if score fire_walker minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/fire_walker/off
# Set its status to future old status
scoreboard players operation #fire_walker minecraft_but.toggle = fire_walker minecraft_but.toggle

# If flying_skeletons was on but is now off, run clean-up off function
execute if score #flying_skeletons minecraft_but.toggle matches 1 if score flying_skeletons minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/flying_skeletons/off
# Set its status to future old status
scoreboard players operation #flying_skeletons minecraft_but.toggle = flying_skeletons minecraft_but.toggle

# If frozen_time was on but is now off, run clean-up off function
execute if score #frozen_time minecraft_but.toggle matches 1 if score frozen_time minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/frozen_time/off
# Set its status to future old status
scoreboard players operation #frozen_time minecraft_but.toggle = frozen_time minecraft_but.toggle

# If glowing was on but is now off, run clean-up off function
execute if score #glowing minecraft_but.toggle matches 1 if score glowing minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/glowing/off
# Set its status to future old status
scoreboard players operation #glowing minecraft_but.toggle = glowing minecraft_but.toggle

# If herbivore was on but is now off, run clean-up off function
execute if score #herbivore minecraft_but.toggle matches 1 if score herbivore minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/herbivore/off
# Set its status to future old status
scoreboard players operation #herbivore minecraft_but.toggle = herbivore minecraft_but.toggle

# If keep_moving was on but is now off, run clean-up off function
execute if score #keep_moving minecraft_but.toggle matches 1 if score keep_moving minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/keep_moving/off
# Set its status to future old status
scoreboard players operation #keep_moving minecraft_but.toggle = keep_moving minecraft_but.toggle

# If lightning_storm was on but is now off, run clean-up off function
execute if score #lightning_storm minecraft_but.toggle matches 1 if score lightning_storm minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/lightning_storm/off
# Set its status to future old status
scoreboard players operation #lightning_storm minecraft_but.toggle = lightning_storm minecraft_but.toggle

# If limited_inventory was on but is now off, run clean-up off function
execute if score #limited_inventory minecraft_but.toggle matches 1 if score limited_inventory minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/limited_inventory/off
# Set its status to future old status
scoreboard players operation #limited_inventory minecraft_but.toggle = limited_inventory minecraft_but.toggle

# If look_straight was on but is now off, run clean-up off function
execute if score #look_straight minecraft_but.toggle matches 1 if score look_straight minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/look_straight/off
# Set its status to future old status
scoreboard players operation #look_straight minecraft_but.toggle = look_straight minecraft_but.toggle

# If mermaid was on but is now off, run clean-up off function
execute if score #mermaid minecraft_but.toggle matches 1 if score mermaid minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/mermaid/off
# Set its status to future old status
scoreboard players operation #mermaid minecraft_but.toggle = mermaid minecraft_but.toggle

# If midas_touch was on but is now off, run clean-up off function
execute if score #midas_touch minecraft_but.toggle matches 1 if score midas_touch minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/midas_touch/off
# Set its status to future old status
scoreboard players operation #midas_touch minecraft_but.toggle = midas_touch minecraft_but.toggle

# If mobs_tp_to_you was on but is now off, run clean-up off function
execute if score #mobs_tp_to_you minecraft_but.toggle matches 1 if score mobs_tp_to_you minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/mobs_tp_to_you/off
# Set its status to future old status
scoreboard players operation #mobs_tp_to_you minecraft_but.toggle = mobs_tp_to_you minecraft_but.toggle

# If no_gravity was on but is now off, run clean-up off function
execute if score #no_gravity minecraft_but.toggle matches 1 if score no_gravity minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/no_gravity/off
# Set its status to future old status
scoreboard players operation #no_gravity minecraft_but.toggle = no_gravity minecraft_but.toggle

# If no_jump was on but is now off, run clean-up off function
execute if score #no_jump minecraft_but.toggle matches 1 if score no_jump minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/no_jump/off
# Set its status to future old status
scoreboard players operation #no_jump minecraft_but.toggle = no_jump minecraft_but.toggle

# If no_sneak was on but is now off, run clean-up off function
execute if score #no_sneak minecraft_but.toggle matches 1 if score no_sneak minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/no_sneak/off
# Set its status to future old status
scoreboard players operation #no_sneak minecraft_but.toggle = no_sneak minecraft_but.toggle

# If op_bats was on but is now off, run clean-up off function
execute if score #op_bats minecraft_but.toggle matches 1 if score op_bats minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/op_bats/off
# Set its status to future old status
scoreboard players operation #op_bats minecraft_but.toggle = op_bats minecraft_but.toggle

# If overworld_ghasts was on but is now off, run clean-up off function
execute if score #overworld_ghasts minecraft_but.toggle matches 1 if score overworld_ghasts minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/overworld_ghasts/off
# Set its status to future old status
scoreboard players operation #overworld_ghasts minecraft_but.toggle = overworld_ghasts minecraft_but.toggle

# If pacifist was on but is now off, run clean-up off function
execute if score #pacifist minecraft_but.toggle matches 1 if score pacifist minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/pacifist/off
# Set its status to future old status
scoreboard players operation #pacifist minecraft_but.toggle = pacifist minecraft_but.toggle

# If pigification was on but is now off, run clean-up off function
execute if score #pigification minecraft_but.toggle matches 1 if score pigification minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/pigification/off
# Set its status to future old status
scoreboard players operation #pigification minecraft_but.toggle = pigification minecraft_but.toggle

# If piglinator was on but is now off, run clean-up off function
execute if score #piglinator minecraft_but.toggle matches 1 if score piglinator minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/piglinator/off
# Set its status to future old status
scoreboard players operation #piglinator minecraft_but.toggle = piglinator minecraft_but.toggle

# If potion_food was on but is now off, run clean-up off function
execute if score #potion_food minecraft_but.toggle matches 1 if score potion_food minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/potion_food/off
# Set its status to future old status
scoreboard players operation #potion_food minecraft_but.toggle = potion_food minecraft_but.toggle

# If random was on but is now off, run clean-up off function
execute if score #random minecraft_but.toggle matches 1 if score random minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/random/off
# Set its status to future old status
scoreboard players operation #random minecraft_but.toggle = random minecraft_but.toggle

# If random_effects was on but is now off, run clean-up off function
execute if score #random_effects minecraft_but.toggle matches 1 if score random_effects minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/random_effects/off
# Set its status to future old status
scoreboard players operation #random_effects minecraft_but.toggle = random_effects minecraft_but.toggle

# If random_structures was on but is now off, run clean-up off function
execute if score #random_structures minecraft_but.toggle matches 1 if score random_structures minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/random_structures/off
# Set its status to future old status
scoreboard players operation #random_structures minecraft_but.toggle = random_structures minecraft_but.toggle

# If random_teleport was on but is now off, run clean-up off function
execute if score #random_teleport minecraft_but.toggle matches 1 if score random_teleport minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/random_teleport/off
# Set its status to future old status
scoreboard players operation #random_teleport minecraft_but.toggle = random_teleport minecraft_but.toggle

# If realistic_spiders was on but is now off, run clean-up off function
execute if score #realistic_spiders minecraft_but.toggle matches 1 if score realistic_spiders minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/realistic_spiders/off
# Set its status to future old status
scoreboard players operation #realistic_spiders minecraft_but.toggle = realistic_spiders minecraft_but.toggle

# If schlatt_mode was on but is now off, run clean-up off function
execute if score #schlatt_mode minecraft_but.toggle matches 1 if score schlatt_mode minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/schlatt_mode/off
# Set its status to future old status
scoreboard players operation #schlatt_mode minecraft_but.toggle = schlatt_mode minecraft_but.toggle

# If stacked_pigs was on but is now off, run clean-up off function
execute if score #stacked_pigs minecraft_but.toggle matches 1 if score stacked_pigs minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/stacked_pigs/off
# Set its status to future old status
scoreboard players operation #stacked_pigs minecraft_but.toggle = stacked_pigs minecraft_but.toggle

# If superhot was on but is now off, run clean-up off function
execute if score #superhot minecraft_but.toggle matches 1 if score superhot minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/superhot/off
# Set its status to future old status
scoreboard players operation #superhot minecraft_but.toggle = superhot minecraft_but.toggle

# If suspicious_injury was on but is now off, run clean-up off function
execute if score #suspicious_injury minecraft_but.toggle matches 1 if score suspicious_injury minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/suspicious_injury/off
# Set its status to future old status
scoreboard players operation #suspicious_injury minecraft_but.toggle = suspicious_injury minecraft_but.toggle

# If teleport_chorus was on but is now off, run clean-up off function
execute if score #teleport_chorus minecraft_but.toggle matches 1 if score teleport_chorus minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/teleport_chorus/off
# Set its status to future old status
scoreboard players operation #teleport_chorus minecraft_but.toggle = teleport_chorus minecraft_but.toggle

# If tnt_bats was on but is now off, run clean-up off function
execute if score #tnt_bats minecraft_but.toggle matches 1 if score tnt_bats minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/tnt_bats/off
# Set its status to future old status
scoreboard players operation #tnt_bats minecraft_but.toggle = tnt_bats minecraft_but.toggle

# If tnt_rain was on but is now off, run clean-up off function
execute if score #tnt_rain minecraft_but.toggle matches 1 if score tnt_rain minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/tnt_rain/off
# Set its status to future old status
scoreboard players operation #tnt_rain minecraft_but.toggle = tnt_rain minecraft_but.toggle

# If toxic_water was on but is now off, run clean-up off function
execute if score #toxic_water minecraft_but.toggle matches 1 if score toxic_water minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/toxic_water/off
# Set its status to future old status
scoreboard players operation #toxic_water minecraft_but.toggle = toxic_water minecraft_but.toggle

# If tp_arrows was on but is now off, run clean-up off function
execute if score #tp_arrows minecraft_but.toggle matches 1 if score tp_arrows minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/tp_arrows/off
# Set its status to future old status
scoreboard players operation #tp_arrows minecraft_but.toggle = tp_arrows minecraft_but.toggle

# If troglodyte was on but is now off, run clean-up off function
execute if score #troglodyte minecraft_but.toggle matches 1 if score troglodyte minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/troglodyte/off
# Set its status to future old status
scoreboard players operation #troglodyte minecraft_but.toggle = troglodyte minecraft_but.toggle

# If unstable_inv was on but is now off, run clean-up off function
execute if score #unstable_inv minecraft_but.toggle matches 1 if score unstable_inv minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/unstable_inv/off
# Set its status to future old status
scoreboard players operation #unstable_inv minecraft_but.toggle = unstable_inv minecraft_but.toggle

# If volatile_creepers was on but is now off, run clean-up off function
execute if score #volatile_creepers minecraft_but.toggle matches 1 if score volatile_creepers minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/volatile_creepers/off
# Set its status to future old status
scoreboard players operation #volatile_creepers minecraft_but.toggle = volatile_creepers minecraft_but.toggle

# If walk_leveling was on but is now off, run clean-up off function
execute if score #walk_leveling minecraft_but.toggle matches 1 if score walk_leveling minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/walk_leveling/off
# Set its status to future old status
scoreboard players operation #walk_leveling minecraft_but.toggle = walk_leveling minecraft_but.toggle

# If waning_wellness was on but is now off, run clean-up off function
execute if score #waning_wellness minecraft_but.toggle matches 1 if score waning_wellness minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/waning_wellness/off
# Set its status to future old status
scoreboard players operation #waning_wellness minecraft_but.toggle = waning_wellness minecraft_but.toggle

# If yeet was on but is now off, run clean-up off function
execute if score #yeet minecraft_but.toggle matches 1 if score yeet minecraft_but.toggle matches 0 run function minecraft_but.core:modifiers/yeet/off
# Set its status to future old status
scoreboard players operation #yeet minecraft_but.toggle = yeet minecraft_but.toggle

