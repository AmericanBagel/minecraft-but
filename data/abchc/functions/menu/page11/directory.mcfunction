scoreboard players set bool chest_menu 1

execute if score selection chest_menu matches 0 run say ERROR

##execute if score selection chest_menu matches 1 run scoreboard players set @s chest_menu 1

execute if score selection chest_menu matches 0 run say ERROR
execute if score selection chest_menu matches 1 run function abchc:menu/page0/blank
execute if score selection chest_menu matches 2 run function abchc:menu/page0/blank
execute if score selection chest_menu matches 3 run function abchc:menu/page0/blank
execute if score selection chest_menu matches 4 run function abchc:menu/page0/blank
execute if score selection chest_menu matches 5 run function abchc:menu/page0/blank
execute if score selection chest_menu matches 6 run function abchc:menu/page0/blank
execute if score selection chest_menu matches 7 run function abchc:menu/page0/blank
execute if score selection chest_menu matches 8 run function abchc:menu/page0/blank
execute if score selection chest_menu matches 9 run function abchc:menu/page0/blank
execute if score selection chest_menu matches 10 run function abchc:menu/page0/blank
execute unless score global abch_debug matches 1 if score selection chest_menu matches 11 run scoreboard players set @s abch_debug 1
execute if score global abch_debug matches 1 if score selection chest_menu matches 11 run scoreboard players set @s abch_debug 0
execute if score selection chest_menu matches 12 run function abchc:menu/page0/blank
execute if score selection chest_menu matches 13 run function abchc:menu/page0/blank
execute if score selection chest_menu matches 14 run function abchc:menu/page0/blank
execute if score selection chest_menu matches 15 run function abchc:menu/page0/blank
execute if score selection chest_menu matches 16 run function abchc:menu/page0/blank
execute if score selection chest_menu matches 17 run scoreboard players set @s chest_menu 12
execute if score selection chest_menu matches 18 run function abchc:menu/page0/blank
execute if score selection chest_menu matches 20 run function abchc:menu/page0/blank
execute if score selection chest_menu matches 21 run function abchc:menu/page0/blank
execute if score selection chest_menu matches 22 run function abchc:menu/page0/blank
execute if score selection chest_menu matches 23 run scoreboard players set @s chest_menu 0
execute if score selection chest_menu matches 24 run function abchc:menu/page0/blank
execute if score selection chest_menu matches 25 run function abchc:menu/page0/blank
execute if score selection chest_menu matches 26 run function abchc:menu/page0/blank
execute if score selection chest_menu matches 27 run function abchc:menu/page0/blank
execute if score selection chest_menu matches 26 run function abchc:menu/page0/blank

execute if score @s abch_debug matches 0..1 run function abchc:menu/page11/toggle