scoreboard players set @s abch.mbool 1

##execute if score @s abch.msel matches 1 run scoreboard players set @s abch.mpage 1

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.4 1

execute if score @s abch.msel matches 0 run say ERROR

## Top Column - Blank
execute if score @s abch.msel matches 1 run function abchc:menu/page0/blank
execute if score @s abch.msel matches 2 run function abchc:menu/page0/blank
execute if score @s abch.msel matches 3 run function abchc:menu/page0/blank
execute if score @s abch.msel matches 4 run function abchc:menu/page0/blank
execute if score @s abch.msel matches 5 run function abchc:menu/page0/blank
execute if score @s abch.msel matches 6 run function abchc:menu/page0/blank
execute if score @s abch.msel matches 7 run function abchc:menu/page0/blank
execute if score @s abch.msel matches 8 run function abchc:menu/page0/blank
execute if score @s abch.msel matches 9 run function abchc:menu/page0/blank
## Middle Column - Modifier page selection
execute if score @s abch.msel matches 10 run function abchc:menu/page0/blank

# First core modifier page
execute if score @s abch.msel matches 11 run scoreboard players set @s abch.mpage 20

execute if score @s abch.msel matches 12 run function abchc:menu/page0/blank
# First expansion pack 1 page
execute if score @s abch.msel matches 13 run scoreboard players set @s abch.mpage 30

# First expansion pack 2 page
execute if score @s abch.msel matches 14 run scoreboard players set @s abch.mpage 40

# First expansion pack 3 page
execute if score @s abch.msel matches 15 run scoreboard players set @s abch.mpage 50

# First expansion pack 4 page
execute if score @s abch.msel matches 16 run scoreboard players set @s abch.mpage 60

# First expansion pack 5 page
execute if score @s abch.msel matches 17 run scoreboard players set @s abch.mpage 70

execute if score @s abch.msel matches 18 run function abchc:menu/page0/blank

## Bottom column - blank
execute if score @s abch.msel matches 20 run function abchc:menu/page0/blank
execute if score @s abch.msel matches 21 run function abchc:menu/page0/blank
execute if score @s abch.msel matches 22 run function abchc:menu/page0/blank
execute if score @s abch.msel matches 23 run function abchc:menu/page0/blank
execute if score @s abch.msel matches 24 run function abchc:menu/page0/blank
execute if score @s abch.msel matches 25 run function abchc:menu/page0/blank
execute if score @s abch.msel matches 26 run function abchc:menu/page0/blank
execute if score @s abch.msel matches 27 run function abchc:menu/page0/blank