#> minecraft_but.core:modifiers/troglodyte/mercy.mcfunction
# Prevent player from being spawn killed during day time
# @within minecraft_but.core:modifiers/troglodyte/main
# @context player who just spawned

scoreboard players add @s minecraft_but.troglodyte.mercy_timer 100

particle nautilus ~ ~1 ~ 0.5 0.5 0.5 0.5 10
playsound item.totem.use master @s ~ ~ ~ 1 1

# tag @s add minecraft_but.troglodyte.mercied

tellraw @s [{"text":"The void has spared you from eternal death.","color":"#55aaff","italic":true}]