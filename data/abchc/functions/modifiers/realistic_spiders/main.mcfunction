execute as @e[type=spider] at @s unless score @s abch_webCdwn matches ..119 if entity @a[distance=..6] run function abchc:modifiers/realistic_spiders/webshot

execute as @e[type=armor_stand,name="web_rider1"] at @s if entity @e[type=falling_block,name="web1",limit=1,sort=nearest,distance=..3] at @e[type=falling_block,name="web1",limit=1,sort=nearest,distance=..3] run tp @s ~ ~ ~
execute as @e[type=armor_stand,name="web_rider2"] at @s if entity @e[type=falling_block,name="web2",limit=1,sort=nearest,distance=..3] at @e[type=falling_block,name="web2",limit=1,sort=nearest,distance=..3] run tp @s ~ ~ ~
execute as @e[type=armor_stand,name="web_rider3"] at @s if entity @e[type=falling_block,name="web3",limit=1,sort=nearest,distance=..3] at @e[type=falling_block,name="web3",limit=1,sort=nearest,distance=..3] run tp @s ~ ~ ~
execute as @e[type=armor_stand,name="web_rider4"] at @s if entity @e[type=falling_block,name="web4",limit=1,sort=nearest,distance=..3] at @e[type=falling_block,name="web4",limit=1,sort=nearest,distance=..3] run tp @s ~ ~ ~
execute as @e[type=armor_stand,name="web_rider5"] at @s if entity @e[type=falling_block,name="web5",limit=1,sort=nearest,distance=..3] at @e[type=falling_block,name="web5",limit=1,sort=nearest,distance=..3] run tp @s ~ ~ ~
execute as @e[type=armor_stand,name="web_rider6"] at @s if entity @e[type=falling_block,name="web6",limit=1,sort=nearest,distance=..3] at @e[type=falling_block,name="web6",limit=1,sort=nearest,distance=..3] run tp @s ~ ~ ~
execute as @e[type=armor_stand,name="web_rider7"] at @s if entity @e[type=falling_block,name="web7",limit=1,sort=nearest,distance=..3] at @e[type=falling_block,name="web7",limit=1,sort=nearest,distance=..3] run tp @s ~ ~ ~
execute as @e[type=armor_stand,name="web_rider8"] at @s if entity @e[type=falling_block,name="web8",limit=1,sort=nearest,distance=..3] at @e[type=falling_block,name="web8",limit=1,sort=nearest,distance=..3] run tp @s ~ ~ ~

execute as @e[type=armor_stand,name="web_rider1"] at @s unless entity @e[type=falling_block,name="web1",limit=1,sort=nearest,distance=..3] if block ~ ~ ~ minecraft:cobweb run scoreboard players add @s abch_webKill 1
execute as @e[type=armor_stand,name="web_rider2"] at @s unless entity @e[type=falling_block,name="web2",limit=1,sort=nearest,distance=..3] if block ~ ~ ~ minecraft:cobweb run scoreboard players add @s abch_webKill 1
execute as @e[type=armor_stand,name="web_rider3"] at @s unless entity @e[type=falling_block,name="web3",limit=1,sort=nearest,distance=..3] if block ~ ~ ~ minecraft:cobweb run scoreboard players add @s abch_webKill 1
execute as @e[type=armor_stand,name="web_rider4"] at @s unless entity @e[type=falling_block,name="web4",limit=1,sort=nearest,distance=..3] if block ~ ~ ~ minecraft:cobweb run scoreboard players add @s abch_webKill 1
execute as @e[type=armor_stand,name="web_rider5"] at @s unless entity @e[type=falling_block,name="web5",limit=1,sort=nearest,distance=..3] if block ~ ~ ~ minecraft:cobweb run scoreboard players add @s abch_webKill 1
execute as @e[type=armor_stand,name="web_rider6"] at @s unless entity @e[type=falling_block,name="web6",limit=1,sort=nearest,distance=..3] if block ~ ~ ~ minecraft:cobweb run scoreboard players add @s abch_webKill 1
execute as @e[type=armor_stand,name="web_rider7"] at @s unless entity @e[type=falling_block,name="web7",limit=1,sort=nearest,distance=..3] if block ~ ~ ~ minecraft:cobweb run scoreboard players add @s abch_webKill 1
execute as @e[type=armor_stand,name="web_rider8"] at @s unless entity @e[type=falling_block,name="web8",limit=1,sort=nearest,distance=..3] if block ~ ~ ~ minecraft:cobweb run scoreboard players add @s abch_webKill 1

execute as @e[type=armor_stand,tag=web_rider,scores={abch_webKill=100..}] at @s run function abchc:modifiers/realistic_spiders/webkill
scoreboard players add @e[type=spider,scores={abch_webCdwn=..119}] abch_webCdwn 1