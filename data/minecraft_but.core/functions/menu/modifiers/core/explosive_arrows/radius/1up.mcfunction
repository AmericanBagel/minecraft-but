#> minecraft_but.core:menu/modifiers/core/explosive_arrows/radius/1up
                    # Increase explosive_arrows config score radius by 1
                    # Generated with the script at '../src/index.js'
                    #
                    # @within minecraft_but.core:menu/modifiers/core/explosive_arrows/**
                    # @context player

                    #> Add 1 to score
                    scoreboard players add explosive_arrows.radius minecraft_but.config 1

                    #> Click sound
                    function minecraft_but.core:menu/actions/click

                    #> Update menu
                    function minecraft_but.core:menu/modifiers/core/explosive_arrows/config
                