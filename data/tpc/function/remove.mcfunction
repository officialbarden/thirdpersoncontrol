scoreboard players operation #temp tpc.id = @s tpc.id
execute as @e[type=item_display,predicate=tpc:id/common] run kill @s
execute as @e[type=marker,predicate=tpc:id/common] run kill @s

execute store result storage tpc:temp cache.macro.ID int 1 run scoreboard players get @s tpc.id
function tpc:private/team/remove with storage tpc:temp cache.macro

execute as @e[predicate=tpc:id/common] run tag @s remove tpc.controlled
execute as @e[predicate=tpc:id/common] run tag @s remove tpc.spectated.entity
execute as @e[predicate=tpc:id/common] run scoreboard players reset @s tpc.id

function tpc:private/reset/attributes

tag @s remove tpc.controller
tag @s remove tpc.spectator
gamemode adventure @s
