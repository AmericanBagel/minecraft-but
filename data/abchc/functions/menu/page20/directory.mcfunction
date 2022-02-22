scoreboard players set @s abch.mbool 1

##execute if score @s abch.msel matches 1 run scoreboard players set @s abch.mpage 1

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.4 1

# 0 ERROR
execute if score @s abch.msel matches 0 run say ERROR

### Column 1
## Modifier Items
# 1 - 2020 Mode
execute if score @s abch.msel matches 1 run scoreboard players add @s abch.toggle 1
execute if score @s abch.msel matches 1 if score @s abch.toggle matches 2.. run scoreboard players set @s abch.toggle 0
execute if score @s abch.msel matches 1 run scoreboard players operation 2020_mode abch.toggle = @s abch.toggle

# 2 - Anvil Rain
execute if score @s abch.msel matches 2 run scoreboard players add @s abch.toggle 1
execute if score @s abch.msel matches 2 if score @s abch.toggle matches 2.. run scoreboard players set @s abch.toggle 0
execute if score @s abch.msel matches 2 run scoreboard players operation anvil_rain abch.toggle = @s abch.toggle

# 3 - Anemia-induced Nausea
execute if score @s abch.msel matches 3 run scoreboard players add @s abch.toggle 1
execute if score @s abch.msel matches 3 if score @s abch.toggle matches 2.. run scoreboard players set @s abch.toggle 0
execute if score @s abch.msel matches 3 run scoreboard players operation damage_nausea abch.toggle = @s abch.toggle

# 4 - Blinding Damage
execute if score @s abch.msel matches 4 run scoreboard players add @s abch.toggle 1
execute if score @s abch.msel matches 4 if score @s abch.toggle matches 2.. run scoreboard players set @s abch.toggle 0
execute if score @s abch.msel matches 4 run scoreboard players operation blinding_damage abch.toggle = @s abch.toggle

# 5 - Blindness
execute if score @s abch.msel matches 5 run scoreboard players add @s abch.toggle 1
execute if score @s abch.msel matches 5 if score @s abch.toggle matches 2.. run scoreboard players set @s abch.toggle 0
execute if score @s abch.msel matches 5 run scoreboard players operation blindness abch.toggle = @s abch.toggle

# 6 - Confetti funeral
execute if score @s abch.msel matches 6 run scoreboard players add @s abch.toggle 1
execute if score @s abch.msel matches 6 if score @s abch.toggle matches 2.. run scoreboard players set @s abch.toggle 0
execute if score @s abch.msel matches 6 run scoreboard players operation confetti_funeral abch.toggle = @s abch.toggle

# 7 - Creeper nukes
execute if score @s abch.msel matches 7 run scoreboard players add @s abch.toggle 1
execute if score @s abch.msel matches 7 if score @s abch.toggle matches 2.. run scoreboard players set @s abch.toggle 0
execute if score @s abch.msel matches 7 run scoreboard players operation creeper_nukes abch.toggle = @s abch.toggle

# 8 - Creeper reinforcements
execute if score @s abch.msel matches 8 run scoreboard players add @s abch.toggle 1
execute if score @s abch.msel matches 8 if score @s abch.toggle matches 2.. run scoreboard players set @s abch.toggle 0
execute if score @s abch.msel matches 8 run scoreboard players operation creeper_reinf abch.toggle = @s abch.toggle

# 9 - Deadly falls
execute if score @s abch.msel matches 9 run scoreboard players add @s abch.toggle 1
execute if score @s abch.msel matches 9 if score @s abch.toggle matches 2.. run scoreboard players set @s abch.toggle 0
execute if score @s abch.msel matches 9 run scoreboard players operation deadly_falls abch.toggle = @s abch.toggle

### Column 2
## Toggle Panes
# 10 - 2020 Mode
execute if score @s abch.msel matches 10 run scoreboard players add @s abch.toggle 1
execute if score @s abch.msel matches 10 if score @s abch.toggle matches 2.. run scoreboard players set @s abch.toggle 0
execute if score @s abch.msel matches 10 run scoreboard players operation 2020_mode abch.toggle = @s abch.toggle

# 11 - Anvil Rain
execute if score @s abch.msel matches 11 run scoreboard players add @s abch.toggle 1
execute if score @s abch.msel matches 11 if score @s abch.toggle matches 2.. run scoreboard players set @s abch.toggle 0
execute if score @s abch.msel matches 11 run scoreboard players operation anvil_rain abch.toggle = @s abch.toggle

# 12 - Anemia-induced Nausea
execute if score @s abch.msel matches 12 run scoreboard players add @s abch.toggle 1
execute if score @s abch.msel matches 12 if score @s abch.toggle matches 2.. run scoreboard players set @s abch.toggle 0
execute if score @s abch.msel matches 12 run scoreboard players operation damage_nausea abch.toggle = @s abch.toggle

# 13 - Blinding Damage
execute if score @s abch.msel matches 13 run scoreboard players add @s abch.toggle 1
execute if score @s abch.msel matches 13 if score @s abch.toggle matches 2.. run scoreboard players set @s abch.toggle 0
execute if score @s abch.msel matches 13 run scoreboard players operation blinding_damage abch.toggle = @s abch.toggle

# 14 - Blindness
execute if score @s abch.msel matches 14 run scoreboard players add @s abch.toggle 1
execute if score @s abch.msel matches 14 if score @s abch.toggle matches 2.. run scoreboard players set @s abch.toggle 0
execute if score @s abch.msel matches 14 run scoreboard players operation blindness abch.toggle = @s abch.toggle

# 15 - Confetti funeral
execute if score @s abch.msel matches 15 run scoreboard players add @s abch.toggle 1
execute if score @s abch.msel matches 15 if score @s abch.toggle matches 2.. run scoreboard players set @s abch.toggle 0
execute if score @s abch.msel matches 15 run scoreboard players operation confetti_funeral abch.toggle = @s abch.toggle

# 16 - Creeper nukes
execute if score @s abch.msel matches 16 run scoreboard players add @s abch.toggle 1
execute if score @s abch.msel matches 16 if score @s abch.toggle matches 2.. run scoreboard players set @s abch.toggle 0
execute if score @s abch.msel matches 16 run scoreboard players operation creeper_nukes abch.toggle = @s abch.toggle

# 17 - Creeper reinforcements
execute if score @s abch.msel matches 17 run scoreboard players add @s abch.toggle 1
execute if score @s abch.msel matches 17 if score @s abch.toggle matches 2.. run scoreboard players set @s abch.toggle 0
execute if score @s abch.msel matches 17 run scoreboard players operation creeper_reinf abch.toggle = @s abch.toggle

# 18 - Deadly falls
execute if score @s abch.msel matches 18 run scoreboard players add @s abch.toggle 1
execute if score @s abch.msel matches 18 if score @s abch.toggle matches 2.. run scoreboard players set @s abch.toggle 0
execute if score @s abch.msel matches 18 run scoreboard players operation deadly_falls abch.toggle = @s abch.toggle

execute if score @s abch.msel matches 20 run function abchc:menu/page0/blank
execute if score @s abch.msel matches 21 run function abchc:menu/page0/blank
execute if score @s abch.msel matches 22 run function abchc:menu/page0/blank
execute if score @s abch.msel matches 23 run scoreboard players set @s abch.mpage 5
execute if score @s abch.msel matches 24 run function abchc:menu/page0/blank
execute if score @s abch.msel matches 25 run function abchc:menu/page0/blank
execute if score @s abch.msel matches 26 run function abchc:menu/page0/blank
execute if score @s abch.msel matches 27 run scoreboard players set @s abch.mpage 21