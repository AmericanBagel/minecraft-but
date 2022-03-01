scoreboard players set @p[tag=abch.menu.this] abch.menu.bool 1

##execute if score @p[tag=abch.menu.this] abch.menu.selection matches 1 run scoreboard players set @p[tag=abch.menu.this] abch.menu.page 1

playsound minecraft:ui.button.click player @p[tag=abch.menu.this] ~ ~ ~ 0.4 1

# 0 ERROR
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 0 run say ERROR

### Column 1
## Modifier Items
# 1 - 2020 Mode
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 1 run scoreboard players add @p[tag=abch.menu.this] abch.toggle 1
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 1 if score @p[tag=abch.menu.this] abch.toggle matches 2.. run scoreboard players set @p[tag=abch.menu.this] abch.toggle 0
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 1 run scoreboard players operation 2020_mode abch.toggle = @p[tag=abch.menu.this] abch.toggle

# 2 - Anvil Rain
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 2 run scoreboard players add @p[tag=abch.menu.this] abch.toggle 1
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 2 if score @p[tag=abch.menu.this] abch.toggle matches 2.. run scoreboard players set @p[tag=abch.menu.this] abch.toggle 0
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 2 run scoreboard players operation anvil_rain abch.toggle = @p[tag=abch.menu.this] abch.toggle

# 3 - Anemia-induced Nausea
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 3 run scoreboard players add @p[tag=abch.menu.this] abch.toggle 1
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 3 if score @p[tag=abch.menu.this] abch.toggle matches 2.. run scoreboard players set @p[tag=abch.menu.this] abch.toggle 0
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 3 run scoreboard players operation damage_nausea abch.toggle = @p[tag=abch.menu.this] abch.toggle

# 4 - Blinding Damage
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 4 run scoreboard players add @p[tag=abch.menu.this] abch.toggle 1
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 4 if score @p[tag=abch.menu.this] abch.toggle matches 2.. run scoreboard players set @p[tag=abch.menu.this] abch.toggle 0
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 4 run scoreboard players operation blinding_damage abch.toggle = @p[tag=abch.menu.this] abch.toggle

# 5 - Blindness
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 5 run scoreboard players add @p[tag=abch.menu.this] abch.toggle 1
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 5 if score @p[tag=abch.menu.this] abch.toggle matches 2.. run scoreboard players set @p[tag=abch.menu.this] abch.toggle 0
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 5 run scoreboard players operation blindness abch.toggle = @p[tag=abch.menu.this] abch.toggle

# 6 - Confetti funeral
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 6 run scoreboard players add @p[tag=abch.menu.this] abch.toggle 1
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 6 if score @p[tag=abch.menu.this] abch.toggle matches 2.. run scoreboard players set @p[tag=abch.menu.this] abch.toggle 0
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 6 run scoreboard players operation confetti_funeral abch.toggle = @p[tag=abch.menu.this] abch.toggle

# 7 - Creeper nukes
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 7 run scoreboard players add @p[tag=abch.menu.this] abch.toggle 1
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 7 if score @p[tag=abch.menu.this] abch.toggle matches 2.. run scoreboard players set @p[tag=abch.menu.this] abch.toggle 0
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 7 run scoreboard players operation creeper_nukes abch.toggle = @p[tag=abch.menu.this] abch.toggle

# 8 - Creeper reinforcements
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 8 run scoreboard players add @p[tag=abch.menu.this] abch.toggle 1
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 8 if score @p[tag=abch.menu.this] abch.toggle matches 2.. run scoreboard players set @p[tag=abch.menu.this] abch.toggle 0
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 8 run scoreboard players operation creeper_reinf abch.toggle = @p[tag=abch.menu.this] abch.toggle

# 9 - Deadly falls
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 9 run scoreboard players add @p[tag=abch.menu.this] abch.toggle 1
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 9 if score @p[tag=abch.menu.this] abch.toggle matches 2.. run scoreboard players set @p[tag=abch.menu.this] abch.toggle 0
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 9 run scoreboard players operation deadly_falls abch.toggle = @p[tag=abch.menu.this] abch.toggle

### Column 2
## Toggle Panes
# 10 - 2020 Mode
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 10 run scoreboard players add @p[tag=abch.menu.this] abch.toggle 1
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 10 if score @p[tag=abch.menu.this] abch.toggle matches 2.. run scoreboard players set @p[tag=abch.menu.this] abch.toggle 0
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 10 run scoreboard players operation 2020_mode abch.toggle = @p[tag=abch.menu.this] abch.toggle

# 11 - Anvil Rain
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 11 run scoreboard players add @p[tag=abch.menu.this] abch.toggle 1
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 11 if score @p[tag=abch.menu.this] abch.toggle matches 2.. run scoreboard players set @p[tag=abch.menu.this] abch.toggle 0
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 11 run scoreboard players operation anvil_rain abch.toggle = @p[tag=abch.menu.this] abch.toggle

# 12 - Anemia-induced Nausea
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 12 run scoreboard players add @p[tag=abch.menu.this] abch.toggle 1
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 12 if score @p[tag=abch.menu.this] abch.toggle matches 2.. run scoreboard players set @p[tag=abch.menu.this] abch.toggle 0
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 12 run scoreboard players operation damage_nausea abch.toggle = @p[tag=abch.menu.this] abch.toggle

# 13 - Blinding Damage
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 13 run scoreboard players add @p[tag=abch.menu.this] abch.toggle 1
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 13 if score @p[tag=abch.menu.this] abch.toggle matches 2.. run scoreboard players set @p[tag=abch.menu.this] abch.toggle 0
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 13 run scoreboard players operation blinding_damage abch.toggle = @p[tag=abch.menu.this] abch.toggle

# 14 - Blindness
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 14 run scoreboard players add @p[tag=abch.menu.this] abch.toggle 1
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 14 if score @p[tag=abch.menu.this] abch.toggle matches 2.. run scoreboard players set @p[tag=abch.menu.this] abch.toggle 0
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 14 run scoreboard players operation blindness abch.toggle = @p[tag=abch.menu.this] abch.toggle

# 15 - Confetti funeral
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 15 run scoreboard players add @p[tag=abch.menu.this] abch.toggle 1
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 15 if score @p[tag=abch.menu.this] abch.toggle matches 2.. run scoreboard players set @p[tag=abch.menu.this] abch.toggle 0
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 15 run scoreboard players operation confetti_funeral abch.toggle = @p[tag=abch.menu.this] abch.toggle

# 16 - Creeper nukes
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 16 run scoreboard players add @p[tag=abch.menu.this] abch.toggle 1
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 16 if score @p[tag=abch.menu.this] abch.toggle matches 2.. run scoreboard players set @p[tag=abch.menu.this] abch.toggle 0
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 16 run scoreboard players operation creeper_nukes abch.toggle = @p[tag=abch.menu.this] abch.toggle

# 17 - Creeper reinforcements
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 17 run scoreboard players add @p[tag=abch.menu.this] abch.toggle 1
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 17 if score @p[tag=abch.menu.this] abch.toggle matches 2.. run scoreboard players set @p[tag=abch.menu.this] abch.toggle 0
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 17 run scoreboard players operation creeper_reinf abch.toggle = @p[tag=abch.menu.this] abch.toggle

# 18 - Deadly falls
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 18 run scoreboard players add @p[tag=abch.menu.this] abch.toggle 1
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 18 if score @p[tag=abch.menu.this] abch.toggle matches 2.. run scoreboard players set @p[tag=abch.menu.this] abch.toggle 0
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 18 run scoreboard players operation deadly_falls abch.toggle = @p[tag=abch.menu.this] abch.toggle

execute if score @p[tag=abch.menu.this] abch.menu.selection matches 20 run function abchc:menu/page0/blank
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 21 run function abchc:menu/page0/blank
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 22 run function abchc:menu/page0/blank
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 23 run scoreboard players set @p[tag=abch.menu.this] abch.menu.page 5
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 24 run function abchc:menu/page0/blank
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 25 run function abchc:menu/page0/blank
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 26 run function abchc:menu/page0/blank
execute if score @p[tag=abch.menu.this] abch.menu.selection matches 27 run scoreboard players set @p[tag=abch.menu.this] abch.menu.page 21