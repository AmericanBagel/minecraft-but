scoreboard objectives add abch.global dummy
scoreboard players set #neginf abch.global -2147483648
scoreboard players set #inf abch.global 2147483647

scoreboard objectives add abch.menu dummy
scoreboard objectives add abch.isSpawned dummy
scoreboard objectives add abch.toggle dummy
scoreboard objectives add abch.debug dummy
scoreboard objectives add abch.modifier dummy
scoreboard objectives add abch.timer dummy
scoreboard objectives add abch.config dummy
scoreboard objectives add abch.minute dummy

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


scoreboard objectives add abch.walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add abch.sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add abch.jump minecraft.custom:minecraft.jump
scoreboard objectives add abch.mobkill minecraft.custom:minecraft.mob_kills
scoreboard objectives add abch.pkill minecraft.custom:minecraft.player_kills
scoreboard objectives add abch.blDmg minecraft.custom:minecraft.damage_taken
scoreboard objectives add abch.naDmg minecraft.custom:minecraft.damage_taken
scoreboard objectives add abch.dyingTotem minecraft.used:minecraft.totem_of_undying
scoreboard objectives add abch.death deathCount
scoreboard objectives add abch.fall minecraft.custom:minecraft.fall_one_cm
scoreboard objectives add abch.eatCF minecraft.used:minecraft.chorus_fruit

scoreboard objectives add abch.webKill dummy
scoreboard objectives add abch.yeet dummy
scoreboard objectives add abch.webCdwn dummy
scoreboard objectives add abch.tntRand dummy
scoreboard objectives add abch.lightning dummy
scoreboard objectives add abch.snTime dummy

## Anvil Rain
# anvil_rain.sky - Summon anvils from the sky (Y255)? - BOOLEAN - DEF 1
execute unless score anvil_rain.sky abch.config matches 0..1 run scoreboard players set anvil_rain.sky abch.config 1

# anvil_rain.relative - Summon anvils above players? (+~15)? - BOOLEAN - DEF 1
execute unless score anvil_rain.relative abch.config matches 0..1 run scoreboard players set anvil_rain.relative abch.config 1

# anvil_rain.keep - Keep anvils? - BOOLEAN - DEF 0

# anvil_rain.chance - Anvil spawn rate - INTEGER - DEF 1
execute unless score anvil_rain.chance abch.config matches 0.. run scoreboard players set anvil_rain.chance abch.config 1

scoreboard objectives add abch.anvil_rain.random dummy
scoreboard objectives add abch.anvil_rain.Y dummy
scoreboard objectives add abch.anvil_rain.Yoffset dummy

## Degradation
# degradation.speed - Degradation speed - INTEGER - DEF 1
execute unless score degradation.speed abch.config matches 0..1 run scoreboard players set degradation.speed abch.config 1

## Superhot
scoreboard objectives add abch.superhot.x dummy
scoreboard objectives add abch.superhot.y dummy
scoreboard objectives add abch.superhot.z dummy

scoreboard objectives add abch.superhot.nx dummy
scoreboard objectives add abch.superhot.ny dummy
scoreboard objectives add abch.superhot.nz dummy

## TNT Rain
# tnt_rain.grief - Should TNT grief? - Integer - Def 1
execute unless score tnt_rain.grief abch.config matches 0..1 store result score tnt_rain.grief abch.config run gamerule mobGriefing

# tnt_rain.sky - Summon tnt from the sky (Y255)? - BOOLEAN - DEF 1
execute unless score anvil_rain.sky abch.config matches 0..1 run scoreboard players set anvil_rain.sky abch.config 1

# tnt_rain.relative - Summon tnts above players? (+~15)? - BOOLEAN - DEF 1
execute unless score anvil_rain.relative abch.config matches 0..1 run scoreboard players set anvil_rain.relative abch.config 1

# anvil_rain.keep - Keep anvils? - BOOLEAN - DEF 0

# anvil_rain.chance - Anvil spawn rate - INTEGER - DEF 1
execute unless score anvil_rain.chance abch.config matches 0.. run scoreboard players set anvil_rain.chance abch.config 1

scoreboard objectives add abch.anvil_rain.random dummy
scoreboard objectives add abch.anvil_rain.Y dummy
scoreboard objectives add abch.anvil_rain.Yoffset dummy


scoreboard objectives add abch.effect dummy
scoreboard objectives add abch.efLvl dummy
scoreboard objectives add abch.CEreLimit dummy
scoreboard objectives add abch.CEChunkX dummy
scoreboard objectives add abch.CEChunkZ dummy
scoreboard objectives add abch.CEChunkT dummy

scoreboard objectives add abch.vsMath dummy
scoreboard players set abch.vsLCG abch.vsConst 1103515245
scoreboard objectives add abch.vsConst dummy
scoreboard objectives add abch.vsID dummy

scoreboard objectives add abch.tpaUUID1 dummy
scoreboard objectives add abch.tpaUUID2 dummy
scoreboard objectives add abch.tpaUUID3 dummy
scoreboard objectives add abch.tpaUUID4 dummy

scoreboard objectives add abch.esUUID1 dummy
scoreboard objectives add abch.esUUID2 dummy
scoreboard objectives add abch.esUUID3 dummy
scoreboard objectives add abch.esUUID4 dummy

scoreboard objectives add abch.eeUUID1 dummy
scoreboard objectives add abch.eeUUID2 dummy
scoreboard objectives add abch.eeUUID3 dummy
scoreboard objectives add abch.eeUUID4 dummy

scoreboard objectives add abch.esSneak minecraft.custom:minecraft.sneak_time

scoreboard objectives add abch.vsSize dummy

scoreboard objectives add abch.esLimit dummy
scoreboard objectives add abch.esTimer dummy
scoreboard objectives add abch.frTimer dummy

scoreboard objectives add abch.uiTakeDMG dummy
scoreboard objectives add abch.uiRand dummy

scoreboard objectives add abch.ebDmg minecraft.custom:damage_taken

scoreboard objectives add abch.pfEfLvl dummy
scoreboard objectives add abch.pfEffect dummy

scoreboard objectives add abch.siDmg minecraft.custom:damage_taken
scoreboard objectives add abch.siEffect dummy

scoreboard objectives add abch.ytpLimit dummy
scoreboard objectives add abch.ytpTimer dummy

scoreboard objectives add abch.lagTimer dummy
scoreboard objectives add abch.lagUUID1 dummy
scoreboard objectives add abch.lagUUID2 dummy
scoreboard objectives add abch.lagUUID3 dummy
scoreboard objectives add abch.lagUUID4 dummy
scoreboard objectives add abch.lagCount dummy

scoreboard objectives add abch.walkLevel dummy
scoreboard objectives add abch.walkLevel2 dummy
scoreboard objectives add abch.wlFactor dummy
scoreboard objectives add abch.wlAddend dummy
scoreboard objectives add abch.walkXP minecraft.custom:minecraft.walk_one_cm

# Deadly Colors
scoreboard objectives add abch.deadly_colors.random dummy
scoreboard objectives add abch.deadly_colors.color dummy
scoreboard objectives add abch.deadly_colors dummy

execute unless 



function abchc:modifiers/lag/load

function abchc:modifiers/vengeful_slimes/rng/zprivate/init

say load