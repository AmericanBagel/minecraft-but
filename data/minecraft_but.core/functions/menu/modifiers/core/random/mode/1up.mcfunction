#> minecraft_but.coreraft_but.core:menu/modifiers/core/random/mode/1up
                    # Increase random config score mode by 1
                    # Generated with the script at '../src/index.js'
                    #
                    # @within minecraft_but.coreraft_but.core:menu/modifiers/core/random/**
                    # @context player

                    #> Add 1 to score
                    scoreboard players add random.mode minecraft_but.config 1

                    #> If number outside range, reset score
                    # If below minimum, set to max
                    execute if score random.mode minecraft_but.config < #random.mode_min minecraft_but.default run scoreboard players operation random.mode minecraft_but.config = #random.mode_max minecraft_but.default
                    # If above maximum, set to min
                    execute if score random.mode minecraft_but.config > #random.mode_max minecraft_but.default run scoreboard players operation random.mode minecraft_but.config = #random.mode_min minecraft_but.default

                    #> Click sound
                    function minecraft_but.coreraft_but.core:menu/actions/click

                    #> Update menu
                    function minecraft_but.coreraft_but.core:menu/modifiers/core/random/config
                