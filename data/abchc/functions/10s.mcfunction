#> abchc:10s
# Function analogous to main.mcfunction (tick function)
# which runs every 10 seconds

# Check if modifiers have been turned off.
# If they have been turned off, run clean-up function.
function abchc:modifiers/off

#> Schedule this function again
schedule function abchc:10s 10s