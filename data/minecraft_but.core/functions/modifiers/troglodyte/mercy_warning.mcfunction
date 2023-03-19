#> minecraft_but.coreraft_but.core:modifiers/troglodyte/mercy_warning.mcfunction
# Mercy timer count down before player starts taking damage
# @within minecraft_but.coreraft_but.core:modifiers/troglodyte/main
# @context player who was just mercied

#> Get tick number of second for warning text and danger tone
scoreboard players operation $tick minecraft_but.troglodyte = @s minecraft_but.troglodyte.mercy_timer
scoreboard players operation $tick minecraft_but.troglodyte %= #20 minecraft_but.math

#> Warning text
execute unless score troglodyte.warning minecraft_but.config matches 0 run minecraft_but.coreion minecraft_but.core:modifiers/troglodyte/light_warning

title @s times 0 1 0

#> Danger tone
execute unless score troglodyte.sfx minecraft_but.config matches 0 if score $tick minecraft_but.troglodyte matchesminecraft_but.corerun function minecraft_but.core:modifiers/troglodyte/warning_sound

# Decrease timer
scoreboard players remove @s minecraft_but.troglodyte.mercy_timer 1