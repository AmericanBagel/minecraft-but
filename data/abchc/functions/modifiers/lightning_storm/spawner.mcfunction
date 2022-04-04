summon marker ~ ~10 ~ {CustomName: '{"text":"abch.lightning"}',Tags:["abch","abch.lightning","global.ignore","abch.lightning.init"]}
execute as @e[ tag=abch.lightning.init ] at @s run spreadplayers ~ ~ 5 35 false @s
tag @e[ type=marker, tag=abch.lightning.init ] remove abch.lightning.init
scoreboard players reset @s abch.lightning