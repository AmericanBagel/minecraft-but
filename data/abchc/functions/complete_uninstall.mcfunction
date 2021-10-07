### Removes scoreboards
scoreboard objectives remove abch.menu
scoreboard objectives remove abch_isSpawned
scoreboard objectives remove abch_toggle
scoreboard objectives remove abch_debug
scoreboard objectives remove abch_modifier
scoreboard objectives remove abch_timer
scoreboard objectives remove abch_minute

scoreboard objectives remove abch_walk
scoreboard objectives remove abch_sneak
scoreboard objectives remove abch_jump
scoreboard objectives remove abch_mobkill
scoreboard objectives remove abch_pkill
scoreboard objectives remove abch_blDmg
scoreboard objectives remove abch_naDmg
scoreboard objectives remove abch_dyingTotem
scoreboard objectives remove abch_death
scoreboard objectives remove abch_fall
scoreboard objectives remove abch_eatCF

scoreboard objectives remove abch_webKill
scoreboard objectives remove abch_yeet
scoreboard objectives remove abch_webCdwn
scoreboard objectives remove abch_tntRand
scoreboard objectives remove abch_lightning
scoreboard objectives remove abch_snTime
scoreboard objectives remove abch_anvilRain
scoreboard objectives remove abch_effect
scoreboard objectives remove abch_efLvl
scoreboard objectives remove abch_CEreLimit
scoreboard objectives remove abch_CEChunkX
scoreboard objectives remove abch_CEChunkZ
scoreboard objectives remove abch_CEChunkT

scoreboard objectives remove abch_vsMath
scoreboard objectives remove abch_vsConst
scoreboard objectives remove abch_vsID

scoreboard objectives remove abch_tpaUUID1
scoreboard objectives remove abch_tpaUUID2
scoreboard objectives remove abch_tpaUUID3
scoreboard objectives remove abch_tpaUUID4

scoreboard objectives remove abch_esUUID1
scoreboard objectives remove abch_esUUID2
scoreboard objectives remove abch_esUUID3
scoreboard objectives remove abch_esUUID4

scoreboard objectives remove abch_eeUUID1
scoreboard objectives remove abch_eeUUID2
scoreboard objectives remove abch_eeUUID3
scoreboard objectives remove abch_eeUUID4

scoreboard objectives remove abch_esSneak

scoreboard objectives remove abch_vsSize

scoreboard objectives remove abch_esLimit
scoreboard objectives remove abch_esTimer
scoreboard objectives remove abch_frTimer

scoreboard objectives remove abch_uiTakeDMG
scoreboard objectives remove abch_uiRand

scoreboard objectives remove abch_ebDmg

scoreboard objectives remove abch_pfEfLvl
scoreboard objectives remove abch_pfEffect

scoreboard objectives remove abch_siDmg
scoreboard objectives remove abch_siEffect

scoreboard objectives remove abch_ytpLimit
scoreboard objectives remove abch_ytpTimer
scoreboard objectives remove abch_lagTimer
scoreboard objectives remove abch_lagUUID1
scoreboard objectives remove abch_lagUUID2
scoreboard objectives remove abch_lagUUID3
scoreboard objectives remove abch_lagUUID4
scoreboard objectives remove abch_lagCount

### Kills entities
kill @e[tag=abch]

### Disables data pack
## Only works if directory/archive isn't renamed
datapack disable "file/minecraft but it's absolute chaos V2"
datapack disable "file/minecraft but it's absolute chaos V2.zip"