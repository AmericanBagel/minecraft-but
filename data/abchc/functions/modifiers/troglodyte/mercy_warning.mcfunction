#> abchc:modifiers/troglodyte/mercy_warning.mcfunction
# Mercy timer count down before player starts taking damage
# @within abchc:modifiers/troglodyte/main
# @context player who was just mercied

#> Get tick number of second for warning text and danger tone
scoreboard players operation $tick abch.troglodyte = @s abch.troglodyte.mercy_timer
scoreboard players operation $tick abch.troglodyte %= #20 abch.math

#> Warning text
execute unless score troglodyte.warning abch.config matches 0 run function abchc:modifiers/troglodyte/light_warning

title @s times 0 1 0

#> Danger tone
execute unless score troglodyte.sfx abch.config matches 0 if score $tick abch.troglodyte matches 8.. run function abchc:modifiers/troglodyte/warning_sound

# Decrease timer
scoreboard players remove @s abch.troglodyte.mercy_timer 1