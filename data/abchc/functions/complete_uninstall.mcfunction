#> abchc:complete_uninstall
# Completely uninstall pack
# Remove scoreboards, clean up tags, remove entities
# @user

#> Run uninstall for modifiers
function abchc:modifiers/uninstall

#> Run uninstall for expansion packs
function #abchc:uninstall

# Remove teams
team remove abchc.color.dark_red
team remove abchc.color.gold
team remove abchc.color.yellow
team remove abchc.color.green
team remove abchc.color.blue
team remove abchc.color.dark_purple
team remove abchc.color.white
team remove abchc.color.black
team remove abchc.no_collision

# Remove scoreboards
scoreboard objectives remove abch.menu.page
scoreboard objectives remove abch.toggle
scoreboard objectives remove abch.config
scoreboard objectives remove abch.custom
scoreboard objectives remove abch.default
scoreboard objectives remove abch.expansion
scoreboard objectives remove abch.isSpawned
scoreboard objectives remove abch.debug
scoreboard objectives remove abch.modifier
scoreboard objectives remove abch.timer
scoreboard objectives remove abch.default
scoreboard objectives remove abch.minute
scoreboard objectives remove abch.deaths
scoreboard objectives remove abch.math
scoreboard objectives remove abch.menu.sid
scoreboard objectives remove abch.menu.right_click
scoreboard objectives remove abch.menu.item
scoreboard objectives remove abch.menu.bool
scoreboard objectives remove abch.menu.page
scoreboard objectives remove abch.menu.selection
scoreboard objectives remove abch.no_walk
scoreboard objectives remove abch.sneak
scoreboard objectives remove abch.jump
scoreboard objectives remove abch.mobkill
scoreboard objectives remove abch.pacifist.kill
scoreboard objectives remove abch.blinding_damage
scoreboard objectives remove abch.damage_nausea
scoreboard objectives remove abch.death
scoreboard objectives remove abch.deadly_falls
scoreboard objectives remove abch.realistic_spiders.kill_web
scoreboard objectives remove abch.yeet
scoreboard objectives remove abch.webCdwn
scoreboard objectives remove abch.tntRand
scoreboard objectives remove abch.lightning
scoreboard objectives remove abch.anvil_rain.random
scoreboard objectives remove abch.anvil_rain.Y
scoreboard objectives remove abch.anvil_rain.Yoffset
scoreboard objectives remove abch.random_effect.effect
scoreboard objectives remove abch.random_effect.lvl
scoreboard objectives remove abch.chunk_error.limit
scoreboard objectives remove abch.chunk_error.x
scoreboard objectives remove abch.chunk_error.z
scoreboard objectives remove abch.chunk_error.total
scoreboard objectives remove abch.vsMath
scoreboard objectives remove abch.vsConst
scoreboard objectives remove abch.vsID
scoreboard objectives remove abch.tp_arrows.UUID1
scoreboard objectives remove abch.tp_arrows.UUID2
scoreboard objectives remove abch.tp_arrows.UUID3
scoreboard objectives remove abch.tp_arrows.UUID4
scoreboard objectives remove abch.explosive_snowballs.UUID1
scoreboard objectives remove abch.explosive_snowballs.UUID2
scoreboard objectives remove abch.explosive_snowballs.UUID3
scoreboard objectives remove abch.explosive_snowballs.UUID4
scoreboard objectives remove abch.explosive_eggs.UUID1
scoreboard objectives remove abch.explosive_eggs.UUID2
scoreboard objectives remove abch.explosive_eggs.UUID3
scoreboard objectives remove abch.explosive_eggs.UUID4
scoreboard objectives remove abch.esSneak
scoreboard objectives remove abch.vsSize
scoreboard objectives remove abch.fire_rain.timer
scoreboard objectives remove abch.ender_blood.damage
scoreboard objectives remove abch.potion_food.lvl
scoreboard objectives remove abch.potion_food.effect
scoreboard objectives remove abch.suspicious_injury.damage
scoreboard objectives remove abch.suspicious_injury.effect
scoreboard objectives remove abch.ytpwyl.limit
scoreboard objectives remove abch.ytpwyl.timer
scoreboard objectives remove abch.walk_leveling.lvl
scoreboard objectives remove abch.walk_leveling.lvl2
scoreboard objectives remove abch.walk_leveling.xp
scoreboard objectives remove abch.tp_sneak.sneak
scoreboard objectives remove abch.tp_sneak.raycast
scoreboard objectives remove abch.tp_sneak.timer
scoreboard objectives remove abch.modifier.temp

#> APIs
# Distance library
function abchc:apis/dist/uninstall
function random:private/uninstall