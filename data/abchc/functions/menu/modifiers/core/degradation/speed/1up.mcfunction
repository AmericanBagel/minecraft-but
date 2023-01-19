#> abchc:menu/modifiers/core/degradation/speed/1up
                    # Increase degradation config score speed by 1
                    # Generated with the script at '../src/index.js'
                    #
                    # @within abchc:menu/modifiers/core/degradation/**
                    # @context player

                    #> Add 1 to score
                    scoreboard players add degradation.speed abch.config 1

                    #> Click sound
                    function abchc:menu/actions/click

                    #> Update menu
                    function abchc:menu/modifiers/core/degradation/config
                