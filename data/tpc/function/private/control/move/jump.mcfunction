execute positioned 0.0 0.0 0.0 rotated ~ -90 positioned ^ ^ ^1 summon marker run function tpc:private/control/move/vector/jump_unitvec

#data modify storage tpc:temp cache.motion.list[1] set from entity @n[tag=tpc.jump.temp] Pos[1]
#kill @e[tag=tpc.jump.temp]
#data modify entity @n[tag=tpc.controlled,predicate=tpc:id/common] Motion[1] set from storage tpc:temp cache.motion.list[1]
