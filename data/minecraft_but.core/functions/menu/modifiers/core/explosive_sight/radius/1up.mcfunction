#> minecraft_but.core:menu/modifiers/core/explosive_sight/radius/1up
                    # Increase explosive_sight config score radius by 1
                    # Generated with the script at '../src/index.js'
                    #
                    # @within minecraft_but.core:menu/modifiers/core/explosive_sight/**
                    # @context player

                    #> Add 1 to score
                    scoreboard players add explosive_sight.radius minecraft_but.config 1

                    #> Click sound
                    function minecraft_but.core:menu/actions/click

                    #> Update menu
                    function minecraft_but.core:menu/modifiers/core/explosive_sight/config
                