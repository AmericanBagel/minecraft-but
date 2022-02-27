execute store result score @p abch.menu.item run clear @p #abchc:chest_menu{abch: {isMenu: 1b}} 0
execute if score @p abch.menu.item matches 1.. run function abchc:menu/directory