#> abchc:modifiers/mermaid/mercy
# Try to teleport players who died and are outside of water to water
# @within abchc:modifiers/mermaid/main
# @context player

particle nautilus ~ ~1 ~ 0.5 0.5 0.5 0.5 10
setblock ~ ~ ~ water
setblock ~ ~1 ~ water
playsound item.totem.use master @s ~ ~ ~ 1 1

tag @s add abch.mermaid.mercied
tag @s add abch.mermaid.in_water

tellraw @s [{"text":"The ocean has spared you from eternal death.","color":"#55aaff","italic":true}]