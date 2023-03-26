#> minecraft_but.core:modifiers/explosive_phantoms/load

scoreboard players set explosive_phantoms.interval minecraft_but.default 10
execute unless score explosive_phantoms.interval minecraft_but.config matches -2147483648..2147483647 run scoreboard players operation explosive_phantoms.interval minecraft_but.config = explosive_phantoms.interval minecraft_but.default

scoreboard players set explosive_phantoms.kill minecraft_but.default 1
execute unless score explosive_phantoms.kill minecraft_but.config matches 0..1 run scoreboard players operation explosive_phantoms.kill minecraft_but.config = explosive_phantoms.kill minecraft_but.default

scoreboard objectives add minecraft_but.explosive_phantoms.interval dummy