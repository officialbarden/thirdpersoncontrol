#> SET SCORE OF #TEMP FOR PREDICATE BASED ID-CHECKING. PREDICATE = tpc:id/common
scoreboard players operation #temp tpc.id = @s tpc.id
ride @s mount @n[tag=tpc.camera,predicate=tpc:id/common]
$gamemode $(gamemode) @s


#> TELEPORT/MOVE CAMERA WHEN PLAYER MOVES MOUSE
execute as @e[type=item_display,tag=tpc.camera,predicate=tpc:id/common] at @s rotated as @p[predicate=tpc:id/common] positioned as @n[tag=tpc.controlled,predicate=tpc:id/common] positioned ^ ^-0.5 ^ run function tpc:private/control/teleport/init with entity @n[type=marker,tag=tpc.controlled.info,predicate=tpc:id/common] data

#> INIT FOR MOVEMENT CHECK
execute on vehicle as @s[tag=tpc.controlled,predicate=tpc:id/common] rotated as @p[predicate=tpc:id/common] rotated ~ 0 run rotate @s ~ ~
function tpc:private/control/move/init

#> Gravity:
#execute rotated as @s[predicate=!tpc:input/jump] at @n[type=!#tpc:can_fly,tag=tpc.controlled,predicate=tpc:id/common] run return run function tpc:private/control/move/gravity with entity @n[tag=tpc.controlled.info,predicate=tpc:id/common] data


#> Set Same Health:
#data modify storage tpc:temp cache.macro.HEALTH set from entity @n[tag=tpc.controlled,predicate=tpc:id/common] Health
#function tpc:private/modify/attributes
#function tpc:private/modify/common_health with storage tpc:temp cache.macro

#> DEATH CHECK:
#execute unless entity @e[tag=tpc.controlled,predicate=tpc:id/common] run function tpc:private/death/1
