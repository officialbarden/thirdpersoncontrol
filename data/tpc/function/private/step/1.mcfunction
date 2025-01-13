#> SET SCORE OF #TEMP FOR PREDICATE BASED ID-CHECKING. PREDICATE = tpc:id/common
scoreboard players operation #temp tpc.id = @s tpc.id

execute if entity @p[predicate=tpc:id/common,predicate=tpc:input/w] anchored feet positioned ^ ^ ^1 if block ~ ~ ~ #tpc:step_height run data modify entity @s Motion[1] set value 0.4d
execute if entity @p[predicate=tpc:id/common,predicate=tpc:input/a] anchored feet positioned ^ ^ ^1 if block ~ ~ ~ #tpc:step_height run data modify entity @s Motion[1] set value 0.4d
execute if entity @p[predicate=tpc:id/common,predicate=tpc:input/s] anchored feet positioned ^ ^ ^1 if block ~ ~ ~ #tpc:step_height run data modify entity @s Motion[1] set value 0.4d
execute if entity @p[predicate=tpc:id/common,predicate=tpc:input/d] anchored feet positioned ^ ^ ^1 if block ~ ~ ~ #tpc:step_height run data modify entity @s Motion[1] set value 0.4d