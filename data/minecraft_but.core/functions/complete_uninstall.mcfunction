#> minecraft_but.core:complete_uninstall
# Completely uninstall pack
# Remove scoreboards, clean up tags, remove entities
# @user

#> Run uninstall for modifiers
function minecraft_but.core:modifiers/uninstall

#> Run uninstall for expansion packs
function #minecraft_but.core:uninstall

# Remove teams
team remove minecraft_but.core.color.dark_red
team remove minecraft_but.core.color.gold
team remove minecraft_but.core.color.yellow
team remove minecraft_but.core.color.green
team remove minecraft_but.core.color.blue
team remove minecraft_but.core.color.dark_purple
team remove minecraft_but.core.color.white
team remove minecraft_but.core.color.black
team remove minecraft_but.core.no_collision

# Remove scoreboards
scoreboard objectives remove minecraft_but.menu.page
scoreboard objectives remove minecraft_but.toggle
scoreboard objectives remove minecraft_but.config
scoreboard objectives remove minecraft_but.custom
scoreboard objectives remove minecraft_but.default
scoreboard objectives remove minecraft_but.expansion
scoreboard objectives remove minecraft_but.isSpawned
scoreboard objectives remove minecraft_but.debug
scoreboard objectives remove minecraft_but.modifier
scoreboard objectives remove minecraft_but.timer
scoreboard objectives remove minecraft_but.default
scoreboard objectives remove minecraft_but.minute
scoreboard objectives remove minecraft_but.deaths
scoreboard objectives remove minecraft_but.math
scoreboard objectives remove minecraft_but.menu.sid
scoreboard objectives remove minecraft_but.menu.right_click
scoreboard objectives remove minecraft_but.menu.item
scoreboard objectives remove minecraft_but.menu.bool
scoreboard objectives remove minecraft_but.menu.page
scoreboard objectives remove minecraft_but.menu.selection
scoreboard objectives remove minecraft_but.no_walk
scoreboard objectives remove minecraft_but.sneak
scoreboard objectives remove minecraft_but.jump
scoreboard objectives remove minecraft_but.mobkill
scoreboard objectives remove minecraft_but.pacifist.kill
scoreboard objectives remove minecraft_but.blinding_damage
scoreboard objectives remove minecraft_but.damage_nausea
scoreboard objectives remove minecraft_but.death
scoreboard objectives remove minecraft_but.deadly_falls
scoreboard objectives remove minecraft_but.realistic_spiders.kill_web
scoreboard objectives remove minecraft_but.yeet
scoreboard objectives remove minecraft_but.webCdwn
scoreboard objectives remove minecraft_but.tntRand
scoreboard objectives remove minecraft_but.lightning
scoreboard objectives remove minecraft_but.anvil_rain.random
scoreboard objectives remove minecraft_but.anvil_rain.Y
scoreboard objectives remove minecraft_but.anvil_rain.Yoffset
scoreboard objectives remove minecraft_but.random_effect.effect
scoreboard objectives remove minecraft_but.random_effect.lvl
scoreboard objectives remove minecraft_but.chunk_error.limit
scoreboard objectives remove minecraft_but.chunk_error.x
scoreboard objectives remove minecraft_but.chunk_error.z
scoreboard objectives remove minecraft_but.chunk_error.total
scoreboard objectives remove minecraft_but.vsMath
scoreboard objectives remove minecraft_but.vsConst
scoreboard objectives remove minecraft_but.vsID
scoreboard objectives remove minecraft_but.tp_arrows.UUID1
scoreboard objectives remove minecraft_but.tp_arrows.UUID2
scoreboard objectives remove minecraft_but.tp_arrows.UUID3
scoreboard objectives remove minecraft_but.tp_arrows.UUID4
scoreboard objectives remove minecraft_but.explosive_snowballs.UUID1
scoreboard objectives remove minecraft_but.explosive_snowballs.UUID2
scoreboard objectives remove minecraft_but.explosive_snowballs.UUID3
scoreboard objectives remove minecraft_but.explosive_snowballs.UUID4
scoreboard objectives remove minecraft_but.explosive_eggs.UUID1
scoreboard objectives remove minecraft_but.explosive_eggs.UUID2
scoreboard objectives remove minecraft_but.explosive_eggs.UUID3
scoreboard objectives remove minecraft_but.explosive_eggs.UUID4
scoreboard objectives remove minecraft_but.esSneak
scoreboard objectives remove minecraft_but.vsSize
scoreboard objectives remove minecraft_but.fire_rain.timer
scoreboard objectives remove minecraft_but.ender_blood.damage
scoreboard objectives remove minecraft_but.potion_food.lvl
scoreboard objectives remove minecraft_but.potion_food.effect
scoreboard objectives remove minecraft_but.suspicious_injury.damage
scoreboard objectives remove minecraft_but.suspicious_injury.effect
scoreboard objectives remove minecraft_but.ytpwyl.limit
scoreboard objectives remove minecraft_but.ytpwyl.timer
scoreboard objectives remove minecraft_but.walk_leveling.lvl
scoreboard objectives remove minecraft_but.walk_leveling.lvl2
scoreboard objectives remove minecraft_but.walk_leveling.xp
scoreboard objectives remove minecraft_but.tp_sneak.sneak
scoreboard objectives remove minecraft_but.tp_sneak.raycast
scoreboard objectives remove minecraft_but.tp_sneak.timer
scoreboard objectives remove minecraft_but.modifier.temp
scoreboard objectives remove minecraft_but.troglodyte.timer
scoreboard objectives remove minecraft_but.random
scoreboard objectives remove minecraft_but.random.toggle
scoreboard objectives remove minecraft_but.troglodyte
scoreboard objectives remove minecraft_but.troglodyte.played
scoreboard objectives remove minecraft_but.troglodyte.mercy_timer
scoreboard objectives remove test
scoreboard objectives remove minecraft_but.give_menu
scoreboard objectives remove minecraft_but.troglodyte.deaths
scoreboard objectives remove load.status

tp @e[tag=minecraft_but.core] ~ -1000 ~
tp @e[tag=minecraft_but] ~ -1000 ~

#> APIs
# Distance library
function minecraft_but.core:apis/dist/uninstall
function random:private/uninstall