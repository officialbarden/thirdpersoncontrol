execute as @e[tag=speclib.cam] if score @s speclib.id = @p speclib.id run kill @s
execute as @e[tag=speclib.root] if score @s speclib.id = @p speclib.id run kill @s
execute as @e[tag=speclib.spectatee] if score @s speclib.id = @p speclib.id run tag @s remove speclib.spectatee
execute as @e unless score @s speclib.id = @p speclib.id run scoreboard players reset @s speclib.id
tag @s remove speclib.spectating
scoreboard players reset @s speclib.id