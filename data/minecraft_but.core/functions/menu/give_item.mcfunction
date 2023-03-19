#> minecraft_but.coreraft_but.core:menu/give_item
# Replace player's renamed nether star
# with chaos menu.
#
# @within minecraft_but.coreraft_but.core:menu/find_page
# @context player

item replace entity @s weapon.mainhand with nether_star{display:{Name:'{"text":"Chaos Menu","color":"#ff0000","bold":true,"italic":false}'},minecraft_but:{menu:1b}}