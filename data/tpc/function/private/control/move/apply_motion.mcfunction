data remove storage tpc:temp cache.motion.list
data modify storage tpc:temp cache.motion.list set from entity @s Pos
#execute as @n[type=!#tpc:can_fly,predicate=tpc:id/common,tag=tpc.controlled,predicate=!tpc:on_ground] run data modify storage tpc:temp cache.motion.list[1] set value 0d

data modify entity @n[tag=tpc.controlled,predicate=tpc:id/common] Motion[0] set from storage tpc:temp cache.motion.list[0]
data modify entity @n[tag=tpc.controlled,predicate=tpc:id/common] Motion[2] set from storage tpc:temp cache.motion.list[2]

rotate @n[tag=tpc.controlled,predicate=tpc:id/common] ~-1 ~

execute as @p[predicate=tpc:id/common,predicate=tpc:input/a] run rotate @n[tag=tpc.controlled,predicate=tpc:id/common] ~-1 ~
execute as @p[predicate=tpc:id/common,predicate=tpc:input/d] run rotate @n[tag=tpc.controlled,predicate=tpc:id/common] ~1 ~


data remove storage tpc:temp cache.rotation
data remove storage tpc:temp cache.motion
kill @s