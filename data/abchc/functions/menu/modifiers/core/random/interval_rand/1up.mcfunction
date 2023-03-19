#> abchc:menu/modifiers/core/random/interval_rand/1up
                    # Increase random config score interval_rand by 1
                    # Generated with the script at '../src/index.js'
                    #
                    # @within abchc:menu/modifiers/core/random/**
                    # @context player

                    #> Add 1 to score
                    scoreboard players add random.interval_rand abch.config 1

                    #> Click sound
                    function abchc:menu/actions/click

                    #> Update menu
                    function abchc:menu/modifiers/core/random/config
                