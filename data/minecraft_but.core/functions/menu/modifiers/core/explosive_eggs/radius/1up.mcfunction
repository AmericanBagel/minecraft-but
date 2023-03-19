#> minecraft_but.coreraft_but.core:menu/modifiers/core/explosive_eggs/radius/1up
                    # Increase explosive_eggs config score radius by 1
                    # Generated with the script at '../src/index.js'
                    #
                    # @within minecraft_but.coreraft_but.core:menu/modifiers/core/explosive_eggs/**
                    # @context player

                    #> Add 1 to score
                    scoreboard players add explosive_eggs.radius minecraft_but.config 1

                    #> Click sound
                    function minecraft_but.coreraft_but.core:menu/actions/click

                    #> Update menu
                    function minecraft_but.coreraft_but.core:menu/modifiers/core/explosive_eggs/config
                