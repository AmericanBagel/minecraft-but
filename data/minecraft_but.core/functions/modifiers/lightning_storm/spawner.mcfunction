summon marker ~ ~10 ~ {CustomName: '{"text":"minecraft_but.lightning"}',Tags:["minecraft_but","minecraft_but.lightning","global.ignore","minecraft_but.lightning.init"]}
execute as @e[ tag=minecraft_but.lightning.init ] at @s run spreadplayers ~ ~ 5 35 false @s
tag @e[ type=marker, tag=minecraft_but.lightning.init ] remove minecraft_but.lightning.init
scoreboard players reset @s minecraft_but.lightning