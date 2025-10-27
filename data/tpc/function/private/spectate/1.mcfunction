#> SET SCORE OF #TEMP FOR PREDICATE BASED ID-CHECKING. PREDICATE = tpc:id/common
scoreboard players operation #temp tpc.id = @s tpc.id
ride @s mount @n[tag=tpc.camera,predicate=tpc:id/common]
gamemode spectator @s

#> TELEPORT/MOVE CAMERA WHEN PLAYER MOVES MOUSE
execute \
    as @e[type=item_display,tag=tpc.camera,predicate=tpc:id/common] \
    at @s \
    rotated as @p[predicate=tpc:id/common] \
    positioned as @n[tag=tpc.spectated.entity,predicate=tpc:id/common] \
    positioned ^ ^-0.5 ^ \
    run function tpc:private/spectate/teleport
