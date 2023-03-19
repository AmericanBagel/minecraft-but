#> abchc:menu/modifiers/core/look_straight/x_rot/1up
                    # Increase look_straight config score x_rot by 1
                    # Generated with the script at '../src/index.js'
                    #
                    # @within abchc:menu/modifiers/core/look_straight/**
                    # @context player

                    #> Add 1 to score
                    scoreboard players add look_straight.x_rot abch.config 1

                    #> If number outside range, reset score
                    # If below minimum, set to max
                    execute if score look_straight.x_rot abch.config < #look_straight.x_rot_min abch.default run scoreboard players operation look_straight.x_rot abch.config = #look_straight.x_rot_max abch.default
                    # If above maximum, set to min
                    execute if score look_straight.x_rot abch.config > #look_straight.x_rot_max abch.default run scoreboard players operation look_straight.x_rot abch.config = #look_straight.x_rot_min abch.default

                    #> Click sound
                    function abchc:menu/actions/click

                    #> Update menu
                    function abchc:menu/modifiers/core/look_straight/config
                