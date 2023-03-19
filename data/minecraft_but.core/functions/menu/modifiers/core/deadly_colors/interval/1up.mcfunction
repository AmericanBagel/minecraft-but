#> minecraft_but.core:menu/modifiers/core/deadly_colors/interval/1up
                    # Increase deadly_colors config score interval by 1
                    # Generated with the script at '../src/index.js'
                    #
                    # @within minecraft_but.core:menu/modifiers/core/deadly_colors/**
                    # @context player

                    #> Add 1 to score
                    scoreboard players add deadly_colors.interval minecraft_but.config 1

                    #> Click sound
                    function minecraft_but.core:menu/actions/click

                    #> Update menu
                    function minecraft_but.core:menu/modifiers/core/deadly_colors/config
                