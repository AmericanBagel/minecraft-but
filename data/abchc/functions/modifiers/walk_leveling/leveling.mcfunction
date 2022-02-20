#    4 × current_level + 7 (for levels 0–15)
#    10 × current_level – 38 (for levels 16–30)
#    18 × current_level – 158 (for levels 31+)
#


scoreboard players operation @s abch.walkLevel = @s abch.walkLevel2

execute if score @s abch.walkXP matches 250..374 run scoreboard players set @s abch.walkLevel 1
execute if score @s abch.walkXP matches 375..617 run scoreboard players set @s abch.walkLevel 2
execute if score @s abch.walkXP matches 618..1111 run scoreboard players set @s abch.walkLevel 3
execute if score @s abch.walkXP matches 1112..2167 run scoreboard players set @s abch.walkLevel 4
execute if score @s abch.walkXP matches 2168..4551 run scoreboard players set @s abch.walkLevel 5
execute if score @s abch.walkXP matches 4552..10241 run scoreboard players set @s abch.walkLevel 6
execute if score @s abch.walkXP matches 10242..24579 run scoreboard players set @s abch.walkLevel 7
execute if score @s abch.walkXP matches 24580..62678 run scoreboard players set @s abch.walkLevel 8
execute if score @s abch.walkXP matches 62679..169232 run scoreboard players set @s abch.walkLevel 9
execute if score @s abch.walkXP matches 169233..456929 run scoreboard players set @s abch.walkLevel 10
#execute if score @s abch.walkXP matches 456929.. run scoreboard players set @s abch.walkLevel 1
#execute if score @s abch.walkXP matches 500.. run scoreboard players set @s abch.walkLevel 1
#execute if score @s abch.walkXP matches 500.. run scoreboard players set @s abch.walkLevel 1
#execute if score @s abch.walkXP matches 500.. run scoreboard players set @s abch.walkLevel 1
#execute if score @s abch.walkXP matches 500.. run scoreboard players set @s abch.walkLevel 1
#execute if score @s abch.walkXP matches 500.. run scoreboard players set @s abch.walkLevel 1
#execute if score @s abch.walkXP matches 500.. run scoreboard players set @s abch.walkLevel 1
#execute if score @s abch.walkXP matches 500.. run scoreboard players set @s abch.walkLevel 1
#execute if score @s abch.walkXP matches 500.. run scoreboard players set @s abch.walkLevel 1
#execute if score @s abch.walkXP matches 500.. run scoreboard players set @s abch.walkLevel 1
#execute if score @s abch.walkXP matches 500.. run scoreboard players set @s abch.walkLevel 1
#execute if score @s abch.walkXP matches 500.. run scoreboard players set @s abch.walkLevel 1
#execute if score @s abch.walkXP matches 500.. run scoreboard players set @s abch.walkLevel 1
#execute if score @s abch.walkXP matches 500.. run scoreboard players set @s abch.walkLevel 1
#execute if score @s abch.walkXP matches 500.. run scoreboard players set @s abch.walkLevel 1
#execute if score @s abch.walkXP matches 500.. run scoreboard players set @s abch.walkLevel 1
#execute if score @s abch.walkXP matches 500.. run scoreboard players set @s abch.walkLevel 1
#execute if score @s abch.walkXP matches 500.. run scoreboard players set @s abch.walkLevel 1
#execute if score @s abch.walkXP matches 500.. run scoreboard players set @s abch.walkLevel 1
#execute if score @s abch.walkXP matches 500.. run scoreboard players set @s abch.walkLevel 1
#execute if score @s abch.walkXP matches 500.. run scoreboard players set @s abch.walkLevel 1
#execute if score @s abch.walkXP matches 500.. run scoreboard players set @s abch.walkLevel 1
#execute if score @s abch.walkXP matches 500.. run scoreboard players set @s abch.walkLevel 1
#execute if score @s abch.walkXP matches 500.. run scoreboard players set @s abch.walkLevel 1
#execute if score @s abch.walkXP matches 500.. run scoreboard players set @s abch.walkLevel 1
#execute if score @s abch.walkXP matches 500.. run scoreboard players set @s abch.walkLevel 1
#execute if score @s abch.walkXP matches 500.. run scoreboard players set @s abch.walkLevel 1
#execute if score @s abch.walkXP matches 500.. run scoreboard players set @s abch.walkLevel 1
#execute if score @s abch.walkXP matches 500.. run scoreboard players set @s abch.walkLevel 1
#execute if score @s abch.walkXP matches 500.. run scoreboard players set @s abch.walkLevel 1
#execute if score @s abch.walkXP matches 500.. run scoreboard players set @s abch.walkLevel 1
#execute if score @s abch.walkXP matches 500.. run scoreboard players set @s abch.walkLevel 1