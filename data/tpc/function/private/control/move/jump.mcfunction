data modify storage tpc:temp cache.motion.list set from entity @n[predicate=tpc:id/common,tag=tpc.controlled] Motion
$execute as @s[predicate=tpc:input/jump] \
positioned 0.0 0.0 0.0 \
rotated as @s rotated ~ 0 rotated ~ ~-45 \
positioned ^ ^$(y) ^ run \
summon marker ~ ~ ~ {Tags:["tpc.jump.temp"]}
data modify storage tpc:temp cache.motion.list[1] set from entity @n[tag=tpc.jump.temp] Pos[1]
kill @e[tag=tpc.jump.temp]
data modify entity @n[tag=tpc.controlled,predicate=tpc:id/common] Motion set from storage tpc:temp cache.motion.list
