#> minecraft_but.core:init
# Initialization function. Run if dependencies are installed and loaded (see Lantern Load README: https://github.com/LanternMC/load#checking-for-dependencies)
# Basically the main load function.
# @within minecraft_but.core:load
# @context server

scoreboard objectives add minecraft_but.menu.page dummy

# Trigger command to give menu
scoreboard objectives add minecraft_but.give_menu trigger
scoreboard players enable @e[ gamemode=creative ] minecraft_but.give_menu

#> Config
## Toggle
scoreboard objectives add minecraft_but.toggle dummy
# If no value is assigned to toggle, set it to 1
execute unless score .global minecraft_but.toggle matches 0..1 run scoreboard players set .global minecraft_but.toggle 1

scoreboard objectives add minecraft_but.config dummy
scoreboard objectives add minecraft_but.custom dummy
scoreboard objectives add minecraft_but.default dummy

execute unless score mode minecraft_but.config matches 1..2 run scoreboard players set mode minecraft_but.config 1

scoreboard objectives add minecraft_but.random dummy
scoreboard objectives add minecraft_but.random.toggle dummy

## Difficulty config
# If no value is assigned to global difficulty, set it to normal (2)
# 0 = Peaceful
# 1 = Easy
# 2 = Normal
# 3 = Hard

function minecraft_but.core:modifiers/config

## Gamerules
execute store result score gamerule.mobGriefing minecraft_but.config run gamerule mobGriefing
execute store result score gamerule.showDeathMessages minecraft_but.config run gamerule showDeathMessages
execute store result score gamerule.sendCommandFeedback minecraft_but.config run gamerule sendCommandFeedback

scoreboard objectives add minecraft_but.isSpawned dummy

scoreboard objectives add minecraft_but.debug dummy
scoreboard objectives add minecraft_but.modifier dummy
scoreboard objectives add minecraft_but.timer dummy
scoreboard objectives add minecraft_but.default dummy
scoreboard objectives add minecraft_but.minute dummy
scoreboard objectives add minecraft_but.deaths deathCount

scoreboard objectives add minecraft_but.math dummy
scoreboard players set #inf minecraft_but.math 2147483647
scoreboard players set #10000 minecraft_but.math 10000
scoreboard players set #384 minecraft_but.math 319
scoreboard players set #200 minecraft_but.math 200
scoreboard players set #100 minecraft_but.math 100
scoreboard players set #60 minecraft_but.math 60
scoreboard players set #40 minecraft_but.math 40
scoreboard players set #20 minecraft_but.math 20
scoreboard players set #8 minecraft_but.math 8
scoreboard players set #2 minecraft_but.math 2
scoreboard players set #1 minecraft_but.math 1
scoreboard players set #-1 minecraft_but.math -1
scoreboard players set #neginf minecraft_but.math -2147483647

##### Teams ####
team add minecraft_but.core.color.dark_red
team modify minecraft_but.core.color.dark_red color dark_red

team add minecraft_but.core.color.gold
team modify minecraft_but.core.color.gold color gold

team add minecraft_but.core.color.yellow
team modify minecraft_but.core.color.yellow color yellow

team add minecraft_but.core.color.green
team modify minecraft_but.core.color.green color green

team add minecraft_but.core.color.blue
team modify minecraft_but.core.color.blue color blue

team add minecraft_but.core.color.dark_purple
team modify minecraft_but.core.color.dark_purple color dark_purple

team add minecraft_but.core.color.white
team modify minecraft_but.core.color.white color white

team add minecraft_but.core.color.black
team modify minecraft_but.core.color.white color black

team add minecraft_but.core.no_collision
team modify minecraft_but.core.no_collision collisionRule never

scoreboard objectives add minecraft_but.menu.sid dummy
scoreboard objectives add minecraft_but.menu.right_click minecraft.custom:minecraft.talked_to_villager

##### Menu scores ####
## mitems
# GUI items for /clear
scoreboard objectives add minecraft_but.menu.item dummy

## mbool
# Score for testing for GUI click events
scoreboard objectives add minecraft_but.menu.bool dummy

## mpage
# Current page on GUI
scoreboard objectives add minecraft_but.menu.page dummy

## msel
# Score to keep track of what item was selectedd
scoreboard objectives add minecraft_but.menu.selection dummy

execute store result score showDeathMessages minecraft_but.config run gamerule showDeathMessages


scoreboard objectives add minecraft_but.no_walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add minecraft_but.sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add minecraft_but.jump minecraft.custom:minecraft.jump
scoreboard objectives add minecraft_but.mobkill minecraft.custom:minecraft.mob_kills
scoreboard objectives add minecraft_but.pacifist.kill minecraft.custom:minecraft.player_kills
scoreboard objectives add minecraft_but.blinding_damage minecraft.custom:minecraft.damage_taken
scoreboard objectives add minecraft_but.damage_nausea minecraft.custom:minecraft.damage_taken
scoreboard objectives add minecraft_but.death deathCount
scoreboard objectives add minecraft_but.deadly_falls minecraft.custom:minecraft.fall_one_cm

scoreboard objectives add minecraft_but.realistic_spiders.kill_web dummy
scoreboard objectives add minecraft_but.yeet dummy
scoreboard objectives add minecraft_but.webCdwn dummy
scoreboard objectives add minecraft_but.tntRand dummy
scoreboard objectives add minecraft_but.lightning dummy


## TNT Rain
# tnt_rain.grief - Should TNT grief? - Integer - Def 1
execute unless score tnt_rain.grief minecraft_but.config matches 0..1 store result score tnt_rain.grief minecraft_but.config run gamerule mobGriefing

# tnt_rain.sky - Summon tnt from the sky (319)? - BOOLEAN - DEF 1
execute unless score anvil_rain.sky minecraft_but.config matches 0..1 run scoreboard players set anvil_rain.sky minecraft_but.config 1

# tnt_rain.relative - Summon tnts above players? (+~15)? - BOOLEAN - DEF 1
execute unless score anvil_rain.relative minecraft_but.config matches 0..1 run scoreboard players set anvil_rain.relative minecraft_but.config 1

# anvil_rain.keep - Keep anvils? - BOOLEAN - DEF 0

# anvil_rain.chance - Anvil spawn rate - INTEGER - DEF 1
execute unless score anvil_rain.chance minecraft_but.config matches 0.. run scoreboard players set anvil_rain.chance minecraft_but.config 1

scoreboard objectives add minecraft_but.anvil_rain.random dummy
scoreboard objectives add minecraft_but.anvil_rain.Y dummy
scoreboard objectives add minecraft_but.anvil_rain.Yoffset dummy


scoreboard objectives add minecraft_but.random_effect.effect dummy
scoreboard objectives add minecraft_but.random_effect.lvl dummy
scoreboard objectives add minecraft_but.chunk_error dummy
scoreboard objectives add minecraft_but.chunk_error.x dummy
scoreboard objectives add minecraft_but.chunk_error.z dummy
scoreboard objectives add minecraft_but.chunk_error.total dummy

scoreboard objectives add minecraft_but.vsMath dummy
scoreboard players set minecraft_but.vsLCG minecraft_but.vsConst 1103515245
scoreboard objectives add minecraft_but.vsConst dummy
scoreboard objectives add minecraft_but.vsID dummy

scoreboard objectives add minecraft_but.tp_arrows.UUID1 dummy
scoreboard objectives add minecraft_but.tp_arrows.UUID2 dummy
scoreboard objectives add minecraft_but.tp_arrows.UUID3 dummy
scoreboard objectives add minecraft_but.tp_arrows.UUID4 dummy

scoreboard objectives add minecraft_but.explosive_snowballs.UUID1 dummy
scoreboard objectives add minecraft_but.explosive_snowballs.UUID2 dummy
scoreboard objectives add minecraft_but.explosive_snowballs.UUID3 dummy
scoreboard objectives add minecraft_but.explosive_snowballs.UUID4 dummy

scoreboard objectives add minecraft_but.explosive_eggs.UUID1 dummy
scoreboard objectives add minecraft_but.explosive_eggs.UUID2 dummy
scoreboard objectives add minecraft_but.explosive_eggs.UUID3 dummy
scoreboard objectives add minecraft_but.explosive_eggs.UUID4 dummy

scoreboard objectives add minecraft_but.esSneak minecraft.custom:minecraft.sneak_time

scoreboard objectives add minecraft_but.vsSize dummy

scoreboard objectives add minecraft_but.fire_rain.timer dummy

scoreboard objectives add minecraft_but.ender_blood.damage minecraft.custom:damage_taken

scoreboard objectives add minecraft_but.potion_food.lvl dummy
scoreboard objectives add minecraft_but.potion_food.effect dummy

scoreboard objectives add minecraft_but.suspicious_injury.damage minecraft.custom:damage_taken
scoreboard objectives add minecraft_but.suspicious_injury.effect dummy

scoreboard objectives add minecraft_but.ytpwyl.limit dummy
scoreboard objectives add minecraft_but.ytpwyl.timer dummy

scoreboard objectives add minecraft_but.walk_leveling.lvl dummy
scoreboard objectives add minecraft_but.walk_leveling.lvl2 dummy
scoreboard objectives add minecraft_but.walk_leveling.xp minecraft.custom:minecraft.walk_one_cm

# TP Sneak
scoreboard objectives add minecraft_but.tp_sneak.sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add minecraft_but.tp_sneak.raycast dummy
scoreboard objectives add minecraft_but.tp_sneak.timer dummy

#> Modifiers
function minecraft_but.core:modifiers/load

scoreboard objectives add minecraft_but.modifier.temp dummy

#> APIs
# Distance library
function minecraft_but.core:apis/dist/load

function minecraft_but.core:modifiers/vengeful_slimes/rng/zprivate/init

## Expansion Pack Support
scoreboard objectives add minecraft_but.expansion dummy
# Reset expansion pack loaded status so
# it's always updated after loading
scoreboard players reset * minecraft_but.expansion

## Add scores together for total
scoreboard players operation $total minecraft_but.expansion = #1 minecraft_but.expansion
scoreboard players operation $total minecraft_but.expansion += #2 minecraft_but.expansion
scoreboard players operation $total minecraft_but.expansion += #3 minecraft_but.expansion
scoreboard players operation $total minecraft_but.expansion += #4 minecraft_but.expansion
scoreboard players operation $total minecraft_but.expansion += #5 minecraft_but.expansion
scoreboard players operation $total minecraft_but.expansion += #6 minecraft_but.expansion
scoreboard players operation $total minecraft_but.expansion += #7 minecraft_but.expansion
scoreboard players operation $total minecraft_but.expansion += #8 minecraft_but.expansion
scoreboard players operation $total minecraft_but.expansion += #9 minecraft_but.expansion
scoreboard players operation $total minecraft_but.expansion += #10 minecraft_but.expansion
scoreboard players operation $total minecraft_but.expansion += #11 minecraft_but.expansion
scoreboard players operation $total minecraft_but.expansion += #12 minecraft_but.expansion
scoreboard players operation $total minecraft_but.expansion += #13 minecraft_but.expansion
scoreboard players operation $total minecraft_but.expansion += #14 minecraft_but.expansion
scoreboard players operation $total minecraft_but.expansion += #15 minecraft_but.expansion
scoreboard players operation $total minecraft_but.expansion += #16 minecraft_but.expansion

#> Set total modifiers
# Separated to another file for easy automation
function minecraft_but.core:random/set_total_modifiers

## Run expansion pack loading functions
function #minecraft_but.core:load

#> Functions
function minecraft_but.core:minute

#> Run main (tick) functions
# Tag used for expansion pack support
schedule function #minecraft_but.core:main 1t

#> Other schedules
schedule function minecraft_but.core:10s 1t