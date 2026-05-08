# $(x) $(y) $(speed)

scoreboard players operation #temp tpc.id = @s tpc.id

scoreboard players set @s tpc.camanim 100

$data modify storage tpc:temp camera.interpolate.x set value $(x)
$data modify storage tpc:temp camera.interpolate.y set value $(y)
$data modify storage tpc:temp camera.interpolate.speed set value $(speed)

kill @e[tag=tpc.camanim.marker,predicate=tpc:id/common]

$execute positioned 0.0 0.0 0.0 run summon marker ~ ~ ~ {Tags:["tpc.camanim.marker"],Rotation:[$(x).0f,$(y).0f],data:{x:$(x),y:$(y),speed:$(speed)}}
scoreboard players operation @n[type=marker,tag=tpc.camanim.marker] tpc.id = #temp tpc.id

tag @s add tpc.camanim.interpolate