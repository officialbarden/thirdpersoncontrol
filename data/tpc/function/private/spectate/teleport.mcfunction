data modify entity @s teleport_duration set value 0

execute anchored feet positioned ^ ^0.5 ^-1.5 if block ~ ~ ~ #air run return run tp @s ^ ^0.5 ^-1.5
execute anchored feet positioned ^-0.1 ^ ^-1 if block ~ ~ ~ #air run return run tp @s ^ ^ ^-1
execute anchored feet positioned ^ ^ ^-0.9 if block ~ ~ ~ #air run return run tp @s ^ ^ ^-0.9
execute anchored feet positioned ^ ^ ^-0.8 if block ~ ~ ~ #air run return run tp @s ^ ^ ^-0.8
execute anchored feet positioned ^ ^ ^-0.7 if block ~ ~ ~ #air run return run tp @s ^ ^ ^-0.7
execute anchored feet positioned ^ ^ ^-0.6 if block ~ ~ ~ #air run return run tp @s ^ ^ ^-0.6
execute anchored feet positioned ^ ^ ^-0.6 if block ~ ~ ~ #air run return run tp @s ^ ^ ^-0.6
execute anchored feet positioned ^ ^ ^-0.5 if block ~ ~ ~ #air run return run tp @s ^ ^ ^-0.5
execute anchored feet positioned ^ ^ ^-0.4 if block ~ ~ ~ #air run return run tp @s ^ ^ ^-0.4
execute anchored feet positioned ^ ^ ^-0.3 if block ~ ~ ~ #air run return run tp @s ^ ^ ^-0.3
execute anchored feet positioned ^ ^ ^-0.2 if block ~ ~ ~ #air run return run tp @s ^ ^ ^-0.2
execute anchored feet positioned ^ ^ ^-0.1 if block ~ ~ ~ #air run return run tp @s ^ ^ ^-0.1
execute anchored feet positioned ^ ^ ^-0.05 if block ~ ~ ~ #air run return run tp @s ^ ^ ^-0.05
execute unless block ~ ~ ~ #air run tp @s ^ ^ ^-0.5
execute if block ~ ~ ~ #air run tp @s ^ ^ ^-0.5
