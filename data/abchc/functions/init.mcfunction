#> abchc:init
# Initialization function. Run if dependencies are installed and loaded (see Lantern Load README: https://github.com/LanternMC/load#checking-for-dependencies)
# Basically the main load function.
# @within abchc:load
# @context server

scoreboard objectives add abch.menu.page dummy

# Trigger command to give menu
scoreboard objectives add abch.give_menu trigger
scoreboard players enable @e[ gamemode=creative ] abch.give_menu

#> Config
## Toggle
scoreboard objectives add abch.toggle dummy
# If no value is assigned to toggle, set it to 1
execute unless score .global abch.toggle matches 0..1 run scoreboard players set .global abch.toggle 1

scoreboard objectives add abch.config dummy
scoreboard objectives add abch.custom dummy
scoreboard objectives add abch.default dummy

execute unless score mode abch.config matches 1..2 run scoreboard players set mode abch.config 1

scoreboard objectives add abch.random dummy
scoreboard objectives add abch.random.toggle dummy

## Difficulty config
# If no value is assigned to global difficulty, set it to normal (2)
# 0 = Peaceful
# 1 = Easy
# 2 = Normal
# 3 = Hard

function abchc:modifiers/config

## Gamerules
execute store result score gamerule.mobGriefing abch.config run gamerule mobGriefing
execute store result score gamerule.showDeathMessages abch.config run gamerule showDeathMessages
execute store result score gamerule.sendCommandFeedback abch.config run gamerule sendCommandFeedback

scoreboard objectives add abch.isSpawned dummy

scoreboard objectives add abch.debug dummy
scoreboard objectives add abch.modifier dummy
scoreboard objectives add abch.timer dummy
scoreboard objectives add abch.default dummy
scoreboard objectives add abch.minute dummy
scoreboard objectives add abch.deaths deathCount

scoreboard objectives add abch.math dummy
scoreboard players set #inf abch.math 2147483647
scoreboard players set #10000 abch.math 10000
scoreboard players set #384 abch.math 319
scoreboard players set #200 abch.math 200
scoreboard players set #100 abch.math 100
scoreboard players set #60 abch.math 60
scoreboard players set #40 abch.math 40
scoreboard players set #20 abch.math 20
scoreboard players set #8 abch.math 8
scoreboard players set #2 abch.math 2
scoreboard players set #1 abch.math 1
scoreboard players set #-1 abch.math -1
scoreboard players set #neginf abch.math -2147483647

##### Teams ####
team add abchc.color.dark_red
team modify abchc.color.dark_red color dark_red

team add abchc.color.gold
team modify abchc.color.gold color gold

team add abchc.color.yellow
team modify abchc.color.yellow color yellow

team add abchc.color.green
team modify abchc.color.green color green

team add abchc.color.blue
team modify abchc.color.blue color blue

team add abchc.color.dark_purple
team modify abchc.color.dark_purple color dark_purple

team add abchc.color.white
team modify abchc.color.white color white

team add abchc.color.black
team modify abchc.color.white color black

team add abchc.no_collision
team modify abchc.no_collision collisionRule never

scoreboard objectives add abch.menu.sid dummy
scoreboard objectives add abch.menu.right_click minecraft.custom:minecraft.talked_to_villager

##### Menu scores ####
## mitems
# GUI items for /clear
scoreboard objectives add abch.menu.item dummy

## mbool
# Score for testing for GUI click events
scoreboard objectives add abch.menu.bool dummy

## mpage
# Current page on GUI
scoreboard objectives add abch.menu.page dummy

## msel
# Score to keep track of what item was selectedd
scoreboard objectives add abch.menu.selection dummy

execute store result score showDeathMessages abch.config run gamerule showDeathMessages


scoreboard objectives add abch.no_walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add abch.sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add abch.jump minecraft.custom:minecraft.jump
scoreboard objectives add abch.mobkill minecraft.custom:minecraft.mob_kills
scoreboard objectives add abch.pacifist.kill minecraft.custom:minecraft.player_kills
scoreboard objectives add abch.blinding_damage minecraft.custom:minecraft.damage_taken
scoreboard objectives add abch.damage_nausea minecraft.custom:minecraft.damage_taken
scoreboard objectives add abch.death deathCount
scoreboard objectives add abch.deadly_falls minecraft.custom:minecraft.fall_one_cm

scoreboard objectives add abch.realistic_spiders.kill_web dummy
scoreboard objectives add abch.yeet dummy
scoreboard objectives add abch.webCdwn dummy
scoreboard objectives add abch.tntRand dummy
scoreboard objectives add abch.lightning dummy


## TNT Rain
# tnt_rain.grief - Should TNT grief? - Integer - Def 1
execute unless score tnt_rain.grief abch.config matches 0..1 store result score tnt_rain.grief abch.config run gamerule mobGriefing

# tnt_rain.sky - Summon tnt from the sky (319)? - BOOLEAN - DEF 1
execute unless score anvil_rain.sky abch.config matches 0..1 run scoreboard players set anvil_rain.sky abch.config 1

# tnt_rain.relative - Summon tnts above players? (+~15)? - BOOLEAN - DEF 1
execute unless score anvil_rain.relative abch.config matches 0..1 run scoreboard players set anvil_rain.relative abch.config 1

# anvil_rain.keep - Keep anvils? - BOOLEAN - DEF 0

# anvil_rain.chance - Anvil spawn rate - INTEGER - DEF 1
execute unless score anvil_rain.chance abch.config matches 0.. run scoreboard players set anvil_rain.chance abch.config 1

scoreboard objectives add abch.anvil_rain.random dummy
scoreboard objectives add abch.anvil_rain.Y dummy
scoreboard objectives add abch.anvil_rain.Yoffset dummy


scoreboard objectives add abch.random_effect.effect dummy
scoreboard objectives add abch.random_effect.lvl dummy
scoreboard objectives add abch.chunk_error.limit dummy
scoreboard objectives add abch.chunk_error.x dummy
scoreboard objectives add abch.chunk_error.z dummy
scoreboard objectives add abch.chunk_error.total dummy

scoreboard objectives add abch.vsMath dummy
scoreboard players set abch.vsLCG abch.vsConst 1103515245
scoreboard objectives add abch.vsConst dummy
scoreboard objectives add abch.vsID dummy

scoreboard objectives add abch.tp_arrows.UUID1 dummy
scoreboard objectives add abch.tp_arrows.UUID2 dummy
scoreboard objectives add abch.tp_arrows.UUID3 dummy
scoreboard objectives add abch.tp_arrows.UUID4 dummy

scoreboard objectives add abch.explosive_snowballs.UUID1 dummy
scoreboard objectives add abch.explosive_snowballs.UUID2 dummy
scoreboard objectives add abch.explosive_snowballs.UUID3 dummy
scoreboard objectives add abch.explosive_snowballs.UUID4 dummy

scoreboard objectives add abch.explosive_eggs.UUID1 dummy
scoreboard objectives add abch.explosive_eggs.UUID2 dummy
scoreboard objectives add abch.explosive_eggs.UUID3 dummy
scoreboard objectives add abch.explosive_eggs.UUID4 dummy

scoreboard objectives add abch.esSneak minecraft.custom:minecraft.sneak_time

scoreboard objectives add abch.vsSize dummy

scoreboard objectives add abch.fire_rain.timer dummy

scoreboard objectives add abch.ender_blood.damage minecraft.custom:damage_taken

scoreboard objectives add abch.potion_food.lvl dummy
scoreboard objectives add abch.potion_food.effect dummy

scoreboard objectives add abch.suspicious_injury.damage minecraft.custom:damage_taken
scoreboard objectives add abch.suspicious_injury.effect dummy

scoreboard objectives add abch.ytpwyl.limit dummy
scoreboard objectives add abch.ytpwyl.timer dummy

scoreboard objectives add abch.walk_leveling.lvl dummy
scoreboard objectives add abch.walk_leveling.lvl2 dummy
scoreboard objectives add abch.walk_leveling.xp minecraft.custom:minecraft.walk_one_cm

# TP Sneak
scoreboard objectives add abch.tp_sneak.sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add abch.tp_sneak.raycast dummy
scoreboard objectives add abch.tp_sneak.timer dummy

#> Modifiers
function abchc:modifiers/load

scoreboard objectives add abch.modifier.temp dummy

#> APIs
# Distance library
function abchc:apis/dist/load

function abchc:modifiers/vengeful_slimes/rng/zprivate/init

## Expansion Pack Support
scoreboard objectives add abch.expansion dummy
# Reset expansion pack loaded status so
# it's always updated after loading
scoreboard players reset * abch.expansion

## Add scores together for total
scoreboard players operation $total abch.expansion = #1 abch.expansion
scoreboard players operation $total abch.expansion += #2 abch.expansion
scoreboard players operation $total abch.expansion += #3 abch.expansion
scoreboard players operation $total abch.expansion += #4 abch.expansion
scoreboard players operation $total abch.expansion += #5 abch.expansion
scoreboard players operation $total abch.expansion += #6 abch.expansion
scoreboard players operation $total abch.expansion += #7 abch.expansion
scoreboard players operation $total abch.expansion += #8 abch.expansion
scoreboard players operation $total abch.expansion += #9 abch.expansion
scoreboard players operation $total abch.expansion += #10 abch.expansion
scoreboard players operation $total abch.expansion += #11 abch.expansion
scoreboard players operation $total abch.expansion += #12 abch.expansion
scoreboard players operation $total abch.expansion += #13 abch.expansion
scoreboard players operation $total abch.expansion += #14 abch.expansion
scoreboard players operation $total abch.expansion += #15 abch.expansion
scoreboard players operation $total abch.expansion += #16 abch.expansion

#> Set total modifiers
# Separated to another file for easy automation
function abchc:random/set_total_modifiers

## Run expansion pack loading functions
function #abchc:load

#> Functions
function abchc:minute

#> Run main (tick) functions
# Tag used for expansion pack support
schedule function #abchc:main 1t

#> Other schedules
schedule function abchc:10s 1t