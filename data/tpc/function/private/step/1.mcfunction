#> SET SCORE OF #TEMP FOR PREDICATE BASED ID-CHECKING. PREDICATE = tpc:id/common
execute positioned ^ ^ ^0.3 if block ~ ~ ~ #slabs[type=bottom] run tp @s ^ ^0.5 ^0.1
execute positioned ^ ^ ^0.3 if block ~ ~ ~ #tpc:step_height run tp @s ^ ^0.5 ^0.1
execute positioned ^ ^ ^0.3 unless block ~ ~ ~ #air run tp @s ^ ^0.5 ^0.1
