scoreboard players set @p[tag=abch.menu.this] abch.menu.bool 1


execute if score @p[tag=abch.menu.this] abch.menu.selection matches 0 run say ERROR

##execute if score @p[tag=abch.menu.this] abch.menu.selection matches 1 run scoreboard players set @p[tag=abch.menu.this] abch.menu.page 1

playsound minecraft:ui.button.click player @p[tag=abch.menu.this] ~ ~ ~ 0.4 1

execute if score @p[tag=abch.menu.this] abch.menu.selection matches 0 run say ERROR
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 1 run function abchc:menu/page0/blank
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 2 run function abchc:menu/page0/blank
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 3 run function abchc:menu/page0/blank
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 4 run function abchc:menu/page0/blank
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 5 run function abchc:menu/page0/blank
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 6 run function abchc:menu/page0/blank
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 7 run scoreboard players set @p[tag=abch.menu.this] abch.menu.page 2
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 8 run scoreboard players set @p[tag=abch.menu.this] abch.menu.page 2
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 9 run scoreboard players set @p[tag=abch.menu.this] abch.menu.page 2
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 10 run function abchc:menu/page0/blank
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 11 run function abchc:menu/page0/blank
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 12 run function abchc:menu/page0/blank
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 13 run function abchc:menu/page0/blank
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 14 run tellraw @p[tag=abch.menu.this] ["",{"text":"Click ","italic":true,"color":"green","clickEvent":{"action":"open_url","value":"NOTE TO SELF INSERT PLANETMINECRAFT PAGE HERE, BAGEL!!! DO NOT IGNORE!!!"}},{"text":"here","italic":true,"underlined":true,"color":"green","clickEvent":{"action":"open_url","value":"NOTE TO SELF INSERT PLANETMINECRAFT PAGE HERE, BAGEL!!! DO NOT IGNORE!!!"}},{"text":" to visit ","italic":true,"color":"green","clickEvent":{"action":"open_url","value":"NOTE TO SELF INSERT PLANETMINECRAFT PAGE HERE, BAGEL!!! DO NOT IGNORE!!!"}},{"text":"minecraft but it's absolute chaos' ","bold":true,"color":"dark_red","clickEvent":{"action":"open_url","value":"NOTE TO SELF INSERT PLANETMINECRAFT PAGE HERE, BAGEL!!! DO NOT IGNORE!!!"}},{"text":"PlanetMinecraft page.","italic":true,"color":"green","clickEvent":{"action":"open_url","value":"NOTE TO SELF INSERT PLANETMINECRAFT PAGE HERE, BAGEL!!! DO NOT IGNORE!!!"}}]
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 15 run function abchc:menu/page0/blank
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 16 run scoreboard players set @p[tag=abch.menu.this] abch.menu.page 2
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 17 run scoreboard players set @p[tag=abch.menu.this] abch.menu.page 2
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 18 run scoreboard players set @p[tag=abch.menu.this] abch.menu.page 2
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 20 run function abchc:menu/page0/blank
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 21 run function abchc:menu/page0/blank
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 22 run function abchc:menu/page0/blank
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 23 run scoreboard players set @p[tag=abch.menu.this] abch.menu.page 0
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 24 run function abchc:menu/page0/blank
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 25 run scoreboard players set @p[tag=abch.menu.this] abch.menu.page 2
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 26 run scoreboard players set @p[tag=abch.menu.this] abch.menu.page 2