scoreboard players set bool abch.menu 1


execute if score selection abch.menu matches 0 run say ERROR

##execute if score selection abch.menu matches 1 run scoreboard players set @s abch.menu 1

execute if score selection abch.menu matches 0 run say ERROR
execute if score selection abch.menu matches 1 run function abchc:menu/page0/blank
execute if score selection abch.menu matches 2 run function abchc:menu/page0/blank
execute if score selection abch.menu matches 3 run function abchc:menu/page0/blank
execute if score selection abch.menu matches 4 run function abchc:menu/page0/blank
execute if score selection abch.menu matches 5 run function abchc:menu/page0/blank
execute if score selection abch.menu matches 6 run function abchc:menu/page0/blank
execute if score selection abch.menu matches 7 run scoreboard players set @s abch.menu 2
execute if score selection abch.menu matches 8 run scoreboard players set @s abch.menu 2
execute if score selection abch.menu matches 9 run scoreboard players set @s abch.menu 2
execute if score selection abch.menu matches 10 run function abchc:menu/page0/blank
execute if score selection abch.menu matches 11 run function abchc:menu/page0/blank
execute if score selection abch.menu matches 12 run function abchc:menu/page0/blank
execute if score selection abch.menu matches 13 run function abchc:menu/page0/blank
execute if score selection abch.menu matches 14 run tellraw @s ["",{"text":"Click ","italic":true,"color":"green","clickEvent":{"action":"open_url","value":"NOTE TO SELF INSERT PLANETMINECRAFT PAGE HERE, BAGEL!!! DO NOT IGNORE!!!"}},{"text":"here","italic":true,"underlined":true,"color":"green","clickEvent":{"action":"open_url","value":"NOTE TO SELF INSERT PLANETMINECRAFT PAGE HERE, BAGEL!!! DO NOT IGNORE!!!"}},{"text":" to visit ","italic":true,"color":"green","clickEvent":{"action":"open_url","value":"NOTE TO SELF INSERT PLANETMINECRAFT PAGE HERE, BAGEL!!! DO NOT IGNORE!!!"}},{"text":"minecraft but it's absolute chaos' ","bold":true,"color":"dark_red","clickEvent":{"action":"open_url","value":"NOTE TO SELF INSERT PLANETMINECRAFT PAGE HERE, BAGEL!!! DO NOT IGNORE!!!"}},{"text":"PlanetMinecraft page.","italic":true,"color":"green","clickEvent":{"action":"open_url","value":"NOTE TO SELF INSERT PLANETMINECRAFT PAGE HERE, BAGEL!!! DO NOT IGNORE!!!"}}]
execute if score selection abch.menu matches 15 run function abchc:menu/page0/blank
execute if score selection abch.menu matches 16 run scoreboard players set @s abch.menu 2
execute if score selection abch.menu matches 17 run scoreboard players set @s abch.menu 2
execute if score selection abch.menu matches 18 run scoreboard players set @s abch.menu 2
execute if score selection abch.menu matches 20 run function abchc:menu/page0/blank
execute if score selection abch.menu matches 21 run function abchc:menu/page0/blank
execute if score selection abch.menu matches 22 run function abchc:menu/page0/blank
execute if score selection abch.menu matches 23 run scoreboard players set @s abch.menu 0
execute if score selection abch.menu matches 24 run function abchc:menu/page0/blank
execute if score selection abch.menu matches 25 run scoreboard players set @s abch.menu 2
execute if score selection abch.menu matches 26 run scoreboard players set @s abch.menu 2