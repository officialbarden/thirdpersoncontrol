data remove storage tpc:temp cache.motion.list
data modify storage tpc:temp cache.motion.list set value [0.0d, 0.0d, 0.0d]
execute store result storage tpc:temp cache.motion.list[1] double 0.0000001 run scoreboard players get #Y tpc.JumpStrength
#data modify storage tpc:temp cache.motion.list set from entity @s Pos
#execute as @n[type=!#tpc:can_fly,predicate=tpc:id/common,tag=tpc.controlled,predicate=!tpc:on_ground] run data modify storage tpc:temp cache.motion.list[1] set value 0d

data modify entity @n[tag=tpc.controlled,predicate=tpc:id/common] Motion[1] set from storage tpc:temp cache.motion.list[1]

#rotate @n[tag=tpc.controlled,predicate=tpc:id/common] ~-1 ~

data remove storage tpc:temp cache.rotation
data remove storage tpc:temp cache.motion
kill @s
