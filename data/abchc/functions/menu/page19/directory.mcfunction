scoreboard players set @p[tag=abch.menu.this] abch.menu.bool 1

##execute if score @p[tag=abch.menu.this] abch.menu.selection matches 1 run scoreboard players set @p[tag=abch.menu.this] abch.menu.page 1

playsound minecraft:ui.button.click player @p[tag=abch.menu.this] ~ ~ ~ 0.4 1

execute if score @p[tag=abch.menu.this] abch.menu.selection matches 0 run say ERROR

## Top Column - Blank
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 1 run function abchc:menu/page0/blank
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 2 run function abchc:menu/page0/blank
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 3 run function abchc:menu/page0/blank
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 4 run function abchc:menu/page0/blank
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 5 run function abchc:menu/page0/blank
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 6 run function abchc:menu/page0/blank
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 7 run function abchc:menu/page0/blank
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 8 run function abchc:menu/page0/blank
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 9 run function abchc:menu/page0/blank
## Middle Column - Modifier page selection
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 10 run function abchc:menu/page0/blank

# First core modifier page
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 11 run scoreboard players set @p[tag=abch.menu.this] abch.menu.page 20

execute if score @p[tag=abch.menu.this] abch.menu.selection matches 12 run function abchc:menu/page0/blank
# First expansion pack 1 page
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 13 run scoreboard players set @p[tag=abch.menu.this] abch.menu.page 30

# First expansion pack 2 page
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 14 run scoreboard players set @p[tag=abch.menu.this] abch.menu.page 40

# First expansion pack 3 page
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 15 run scoreboard players set @p[tag=abch.menu.this] abch.menu.page 50

# First expansion pack 4 page
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 16 run scoreboard players set @p[tag=abch.menu.this] abch.menu.page 60

# First expansion pack 5 page
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 17 run scoreboard players set @p[tag=abch.menu.this] abch.menu.page 70

execute if score @p[tag=abch.menu.this] abch.menu.selection matches 18 run function abchc:menu/page0/blank

## Bottom column - blank
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 20 run function abchc:menu/page0/blank
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 21 run function abchc:menu/page0/blank
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 22 run function abchc:menu/page0/blank
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 23 run function abchc:menu/page0/blank
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 24 run function abchc:menu/page0/blank
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 25 run function abchc:menu/page0/blank
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 26 run function abchc:menu/page0/blank
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 27 run function abchc:menu/page0/blank