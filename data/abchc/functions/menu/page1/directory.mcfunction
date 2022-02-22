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
execute if score @s abch.msel matches 7 run scoreboard players set @s abch.mpage 2
execute if score @s abch.msel matches 8 run scoreboard players set @s abch.mpage 2
execute if score @s abch.msel matches 9 run scoreboard players set @s abch.mpage 2
execute if score @s abch.msel matches 10 run function abchc:menu/page0/blank
execute if score @s abch.msel matches 11 run function abchc:menu/page0/blank
execute if score @s abch.msel matches 12 run function abchc:menu/page0/blank
execute if score @s abch.msel matches 13 run function abchc:menu/page0/blank
execute if score @s abch.msel matches 14 run tellraw @s ["",{"text":"Click ","italic":true,"color":"green","clickEvent":{"action":"open_url","value":"NOTE TO SELF INSERT PLANETMINECRAFT PAGE HERE, BAGEL!!! DO NOT IGNORE!!!"}},{"text":"here","italic":true,"underlined":true,"color":"green","clickEvent":{"action":"open_url","value":"NOTE TO SELF INSERT PLANETMINECRAFT PAGE HERE, BAGEL!!! DO NOT IGNORE!!!"}},{"text":" to visit ","italic":true,"color":"green","clickEvent":{"action":"open_url","value":"NOTE TO SELF INSERT PLANETMINECRAFT PAGE HERE, BAGEL!!! DO NOT IGNORE!!!"}},{"text":"minecraft but it's absolute chaos' ","bold":true,"color":"dark_red","clickEvent":{"action":"open_url","value":"NOTE TO SELF INSERT PLANETMINECRAFT PAGE HERE, BAGEL!!! DO NOT IGNORE!!!"}},{"text":"PlanetMinecraft page.","italic":true,"color":"green","clickEvent":{"action":"open_url","value":"NOTE TO SELF INSERT PLANETMINECRAFT PAGE HERE, BAGEL!!! DO NOT IGNORE!!!"}}]
execute if score @s abch.msel matches 15 run function abchc:menu/page0/blank
execute if score @s abch.msel matches 16 run scoreboard players set @s abch.mpage 2
execute if score @s abch.msel matches 17 run scoreboard players set @s abch.mpage 2
execute if score @s abch.msel matches 18 run scoreboard players set @s abch.mpage 2
execute if score @s abch.msel matches 20 run function abchc:menu/page0/blank
execute if score @s abch.msel matches 21 run function abchc:menu/page0/blank
execute if score @s abch.msel matches 22 run function abchc:menu/page0/blank
execute if score @s abch.msel matches 23 run scoreboard players set @s abch.mpage 0
execute if score @s abch.msel matches 24 run function abchc:menu/page0/blank
execute if score @s abch.msel matches 25 run scoreboard players set @s abch.mpage 2
execute if score @s abch.msel matches 26 run scoreboard players set @s abch.mpage 2