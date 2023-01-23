#> minecraft_but.core:menu/summon_villager
# SUmmon villager for right click detection
# @within minecraft_but.core:menu/find_page
# @context player

# Add init tag to player
tag @s add minecraft_but.menu.init

# Summon villager with init tag
summon villager ~ ~100 ~ {NoAI:1b,Silent:1b,Offers:{},Tags:["minecraft_but","minecraft_but.menu","minecraft_but.menu.init","global.ignore"],Team:"minecraft_but.core.no_collision"}
effect give @e[tag=minecraft_but.menu] invisibility 100000 255 true

# Increase global sid score
scoreboard players add .global minecraft_but.menu.sid 1

# Set villager's sid score to global
scoreboard players operation @e[type=villager,sort=nearest,limit=1,tag=minecraft_but.menu.init] minecraft_but.menu.sid = .global minecraft_but.menu.sid

# Set player's sid score to global to share score with villager
scoreboard players operation @s[tag=minecraft_but.menu.init] minecraft_but.menu.sid = .global minecraft_but.menu.sid

# Remove player's init tag
tag @e remove minecraft_but.menu.init