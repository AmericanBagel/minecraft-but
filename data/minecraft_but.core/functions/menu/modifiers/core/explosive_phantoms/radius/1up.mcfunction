#> minecraft_but.core:menu/modifiers/core/explosive_phantoms/radius/1up
                    # Increase explosive_phantoms config score radius by 1
                    # Generated with the script at '../src/index.js'
                    #
                    # @within minecraft_but.core:menu/modifiers/core/explosive_phantoms/**
                    # @context player

                    #> Add 1 to score
                    scoreboard players add explosive_phantoms.radius minecraft_but.config 1

                    #> Click sound
                    function minecraft_but.core:menu/actions/click

                    #> Update menu
                    function minecraft_but.core:menu/modifiers/core/explosive_phantoms/config
                