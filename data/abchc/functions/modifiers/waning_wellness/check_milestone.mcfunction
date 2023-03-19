#> abchc:modifiers/waning_wellness/check_milestone
# Function run by milestone advancements which
# increases health if modifier is enabled
#
# Milestones running this function
# can only be used once
#
# @context milestone player
# @private

execute if score waning_wellness abch.toggle matches 1 run function abchc:modifiers/waning_wellness/increase_health