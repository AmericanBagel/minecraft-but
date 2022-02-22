scoreboard players set @s abch.mbool 1

execute if score @s abch.msel matches 0 run say ERROR

##execute if score @s abch.msel matches 1 run scoreboard players set @s abch.mpage 1

playsound minecraft:ui.button.click player @s ~ ~ ~ 0.4 1

execute if score @s abch.msel matches 0 run say ERROR
execute if score @s abch.msel matches 1 run function abchc:menu/page0/blank
execute if score @s abch.msel matches 2 run function abchc:menu/page0/blank
execute if score @s abch.msel matches 3 run function abchc:menu/page0/blank
execute if score @s abch.msel matches 4 run function abchc:menu/page0/blank
execute if score @s abch.msel matches 5 run function abchc:menu/page0/blank
execute if score @s abch.msel matches 6 run function abchc:menu/page0/blank
execute if score @s abch.msel matches 7 run function abchc:menu/page0/blank
execute if score @s abch.msel matches 8 run function abchc:menu/page0/blank
execute if score @s abch.msel matches 9 run function abchc:menu/page0/blank
execute if score @s abch.msel matches 10 run function abchc:menu/page0/blank
execute if score @s abch.msel matches 11 run tellraw @s ["",{"text":"Click ","italic":true,"color":"green","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/member/americanbagel/"}},{"text":"here","italic":true,"underlined":true,"color":"green","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/member/americanbagel/"}},{"text":" to visit AmericanBagel's PlanetMinecraft page.","italic":true,"color":"green","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/member/americanbagel/"}}]
execute if score @s abch.msel matches 12 run function abchc:menu/page0/blank
execute if score @s abch.msel matches 13 run function abchc:menu/page0/blank
execute if score @s abch.msel matches 14 run function abchc:menu/page0/blank
execute if score @s abch.msel matches 15 run function abchc:menu/page0/blank
execute if score @s abch.msel matches 16 run function abchc:menu/page0/blank
execute if score @s abch.msel matches 17 run function abchc:menu/page0/blank
execute if score @s abch.msel matches 18 run function abchc:menu/page0/blank
execute if score @s abch.msel matches 20 run function abchc:menu/page0/blank
execute if score @s abch.msel matches 21 run function abchc:menu/page0/blank
execute if score @s abch.msel matches 22 run function abchc:menu/page0/blank
execute if score @s abch.msel matches 23 run scoreboard players set @s abch.mpage 0
execute if score @s abch.msel matches 24 run function abchc:menu/page0/blank
execute if score @s abch.msel matches 25 run function abchc:menu/page0/blank
execute if score @s abch.msel matches 26 run function abchc:menu/page0/blank