#> minecraft_but.coreraft_but.core:menu/modifiers/core/look_straight/y_rot/1up
                    # Increase look_straight config score y_rot by 1
                    # Generated with the script at '../src/index.js'
                    #
                    # @within minecraft_but.coreraft_but.core:menu/modifiers/core/look_straight/**
                    # @context player

                    #> Add 1 to score
                    scoreboard players add look_straight.y_rot minecraft_but.config 1

                    #> If number outside range, reset score
                    # If below minimum, set to max
                    execute if score look_straight.y_rot minecraft_but.config < #look_straight.y_rot_min minecraft_but.default run scoreboard players operation look_straight.y_rot minecraft_but.config = #look_straight.y_rot_max minecraft_but.default
                    # If above maximum, set to min
                    execute if score look_straight.y_rot minecraft_but.config > #look_straight.y_rot_max minecraft_but.default run scoreboard players operation look_straight.y_rot minecraft_but.config = #look_straight.y_rot_min minecraft_but.default

                    #> Click sound
                    function minecraft_but.coreraft_but.core:menu/actions/click

                    #> Update menu
                    function minecraft_but.coreraft_but.core:menu/modifiers/core/look_straight/config
                