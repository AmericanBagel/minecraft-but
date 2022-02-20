scoreboard objectives add abch.menu dummy
scoreboard objectives add abch.isSpawned dummy
scoreboard objectives add abch.toggle dummy
scoreboard objectives add abch.debug dummy
scoreboard objectives add abch.modifier dummy
scoreboard objectives add abch.timer dummy
scoreboard objectives add abch.minute dummy

##### Menu scores ####
## mitems
# GUI items for /clear
scoreboard objectives add abch.mitems dummy

## mbool
# Score for testing for GUI click events
scoreboard objectives add abch.mbool dummy

## mpage
# Current page on GUI
scoreboard objectives add abch.mpage dummy

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
scoreboard objectives add abch.anvilRain dummy
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

function abchc:modifiers/lag/load

function abchc:modifiers/vengeful_slimes/rng/zprivate/init

say load