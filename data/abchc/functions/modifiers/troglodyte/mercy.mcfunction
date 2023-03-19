#> abchc:modifiers/troglodyte/mercy.mcfunction
# Prevent player from being spawn killed during day time
# @within abchc:modifiers/troglodyte/main
# @context player who just spawned

scoreboard players add @s abch.troglodyte.mercy_timer 100

particle nautilus ~ ~1 ~ 0.5 0.5 0.5 0.5 10
playsound item.totem.use master @s ~ ~ ~ 1 1

# tag @s add abch.troglodyte.mercied

tellraw @s [{"text":"The void has spared you from eternal death.","color":"#55aaff","italic":true}]