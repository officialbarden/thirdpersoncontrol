#> reset #id
scoreboard players set #id speclib.id -1
execute store result score #id speclib.id run scoreboard players get @e[type=!player,tag=speclib.cam,sort=nearest,limit=1] speclib.id

#> change gamemode
gamemode spectator @s[tag=speclib.spectating,predicate=speclib:id]
execute if predicate speclib:id as @e[tag=speclib.cam,predicate=speclib:id] at @s run ride @p[tag=speclib.spectating,gamemode=spectator,predicate=speclib:id] mount @s
title @p[tag=speclib.spectating] actionbar ""
execute as @e[type=marker,tag=speclib.root,sort=nearest,limit=1,predicate=speclib:id] run tp @s @p[tag=speclib.spectatee,predicate=speclib:id]