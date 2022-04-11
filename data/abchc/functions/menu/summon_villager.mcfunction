#> abchc:menu/summon_villager
# SUmmon villager for right click detection
# @within abchc:menu/find_page
# @context player

# Add init tag to player
tag @s add abch.menu.init

# Summon villager with init tag
summon villager ~ ~100 ~ {NoAI:1b,Silent:1b,Offers:{},Tags:["abch","abch.menu","abch.menu.init"],Team:"abchc.no_collision"}
effect give @e[tag=abch.menu] invisibility 100000 255 true

# Increase global sid score
scoreboard players add .global abch.menu.sid 1

# Set villager's sid score to global
scoreboard players operation @e[type=villager,sort=nearest,limit=1,tag=abch.menu.init] abch.menu.sid = .global abch.menu.sid

# Set player's sid score to global to share score with villager
scoreboard players operation @s[tag=abch.menu.init] abch.menu.sid = .global abch.menu.sid

# Remove player's init tag
tag @e remove abch.menu.init