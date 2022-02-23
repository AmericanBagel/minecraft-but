scoreboard players set @s abch.menu.bool 1

execute if score @s abch.menu.selection matches 0 run say ERROR

##execute if score @s abch.menu.selection matches 1 run scoreboard players set @s abch.menu.page 1

playsound minecraft:ui.button.click player @s ~ ~ ~ 0.4 1

execute if score @s abch.menu.selection matches 0 run say ERROR
execute if score @s abch.menu.selection matches 1 run function abchc:menu/page0/blank
execute if score @s abch.menu.selection matches 2 run function abchc:menu/page0/blank
execute if score @s abch.menu.selection matches 3 run function abchc:menu/page0/blank
execute if score @s abch.menu.selection matches 4 run function abchc:menu/page0/blank
execute if score @s abch.menu.selection matches 5 run function abchc:menu/page0/blank
execute if score @s abch.menu.selection matches 6 run function abchc:menu/page0/blank
execute if score @s abch.menu.selection matches 7 run function abchc:menu/page0/blank
execute if score @s abch.menu.selection matches 8 run function abchc:menu/page0/blank
execute if score @s abch.menu.selection matches 9 run function abchc:menu/page0/blank
execute if score @s abch.menu.selection matches 10 run function abchc:menu/page0/blank
execute if score @s abch.menu.selection matches 11 run tellraw @s ["",{"text":"Click ","italic":true,"color":"green","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/member/americanbagel/"}},{"text":"here","italic":true,"underlined":true,"color":"green","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/member/americanbagel/"}},{"text":" to visit AmericanBagel's PlanetMinecraft page.","italic":true,"color":"green","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/member/americanbagel/"}}]
execute if score @s abch.menu.selection matches 12 run function abchc:menu/page0/blank
execute if score @s abch.menu.selection matches 13 run function abchc:menu/page0/blank
execute if score @s abch.menu.selection matches 14 run function abchc:menu/page0/blank
execute if score @s abch.menu.selection matches 15 run function abchc:menu/page0/blank
execute if score @s abch.menu.selection matches 16 run function abchc:menu/page0/blank
execute if score @s abch.menu.selection matches 17 run function abchc:menu/page0/blank
execute if score @s abch.menu.selection matches 18 run function abchc:menu/page0/blank
execute if score @s abch.menu.selection matches 20 run function abchc:menu/page0/blank
execute if score @s abch.menu.selection matches 21 run function abchc:menu/page0/blank
execute if score @s abch.menu.selection matches 22 run function abchc:menu/page0/blank
execute if score @s abch.menu.selection matches 23 run scoreboard players set @s abch.menu.page 0
execute if score @s abch.menu.selection matches 24 run function abchc:menu/page0/blank
execute if score @s abch.menu.selection matches 25 run function abchc:menu/page0/blank
execute if score @s abch.menu.selection matches 26 run function abchc:menu/page0/blank