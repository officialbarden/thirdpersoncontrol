forceload add 0 0 0 0

#> score check
execute as @a[tag=speclib.spectatee] at @s run function speclib:global/score_check

#> teleport root
execute as @e[tag=speclib.root] at @s run function speclib:global/score_check
execute as @e[tag=speclib.root,predicate=speclib:id] at @s at @e[tag=speclib.spectatee,predicate=speclib:id,sort=nearest,limit=1] run tp @s ~ ~ ~

#> rotating spectator
execute as @a[tag=speclib.spectating] at @s run function speclib:global/score_check
execute as @e[tag=speclib.cam,predicate=speclib:id] at @s rotated as @p positioned as @e[tag=speclib.root,sort=nearest,limit=1] positioned ^ ^ ^ run function speclib:private/teleport
#execute as @e[tag=speclib.cam,predicate=speclib:id] at @s rotated as @p[predicate=speclib:input/sprint] positioned as @e[tag=speclib.root,sort=nearest,limit=1] positioned ^ ^ ^1 run function speclib:private/teleport

#> kill all unequipped cameras:
execute as @a unless score @s speclib.id = @e[tag=speclib.spectatee,sort=nearest,limit=1] speclib.id run tag @s remove speclib.spectating
execute as @e[tag=speclib.cam] unless score @s speclib.id = @p speclib.id run kill @s
execute as @e[tag=speclib.root] unless score @s speclib.id = @p speclib.id run kill @s

execute as @a[tag=speclib.spectating,tag=speclib.entity.control] at @s run function speclib:private/move_entity/get_vector_2
execute as @e[tag=speclib.jump.cooldown] if score @s speclib.jump.timer matches 1.. run scoreboard players remove @s speclib.jump.timer 1
execute as @e[tag=speclib.jump.cooldown,predicate=speclib:entity/on_ground] if score @s speclib.jump.timer matches 0 run function speclib:private/entity_jump/return_control

execute as @a[tag=speclib.spectating,predicate=speclib:input/sneak] at @s run spectate

execute as @a[predicate=speclib:input/w] run title @s actionbar "W"
execute as @a[predicate=speclib:input/w,predicate=speclib:input/a] run title @s actionbar "WA"
execute as @a[predicate=speclib:input/w,predicate=speclib:input/d] run title @s actionbar "WD"

execute as @a[predicate=speclib:input/a] run title @s actionbar "A"
execute as @a[predicate=speclib:input/s] run title @s actionbar "S"
execute as @a[predicate=speclib:input/s,predicate=speclib:input/a] run title @s actionbar "SA"
execute as @a[predicate=speclib:input/s,predicate=speclib:input/d] run title @s actionbar "SD"

execute as @a[predicate=speclib:input/d] run title @s actionbar "D"
