#> minecraft_but.coreraft_but.core:menu/modifiers/core/death_swap/interval/1up
                    # Increase death_swap config score interval by 1
                    # Generated with the script at '../src/index.js'
                    #
                    # @within minecraft_but.coreraft_but.core:menu/modifiers/core/death_swap/**
                    # @context player

                    #> Add 1 to score
                    scoreboard players add death_swap.interval minecraft_but.config 1

                    #> Click sound
                    function minecraft_but.coreraft_but.core:menu/actions/click

                    #> Update menu
                    function minecraft_but.coreraft_but.core:menu/modifiers/core/death_swap/config
                