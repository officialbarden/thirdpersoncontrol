
# VECTOR OFFSET:

# NO SPRINT:
# FORWARDS:
    $execute \
        as @s[predicate=tpc:bool/wasd_check,predicate=!tpc:input/sprint] \
        store result storage tpc:temp cache.vector_offset.z double 0.1 \
        run data get storage tpc:entities entity_type[{"name":"$(name)"}].movement.walk 1
    function tpc:private/control/move/vector with storage tpc:temp cache.vector_offset


# WITH SPRINT:
# FORWARDS:
    $execute \
        as @s[predicate=tpc:bool/wasd_check,predicate=tpc:input/sprint] \
        store result storage tpc:temp cache.vector_offset.z double 0.1 \
        run data get storage tpc:entities entity_type[{"name":"$(name)"}].movement.run 1
    function tpc:private/control/move/vector with storage tpc:temp cache.vector_offset



# JUMP
    data modify storage tpc:temp cache.vector_offset.y set value 0.0d
    $execute \
        if entity @n[type=!#tpc:can_fly,tag=tpc.controlled,predicate=tpc:id/common,predicate=tpc:on_ground] \
        as @s[predicate=tpc:input/jump,tag=!tpc.disabled_jump] \
        store result storage tpc:temp cache.vector_offset.y double 0.1 \
        run data get storage tpc:entities entity_type[{"name":"$(name)"}].movement.jump 1
    execute as @s[predicate=tpc:input/jump,tag=!tpc.disabled_jump] if entity @n[type=!#tpc:can_fly,tag=tpc.controlled,predicate=tpc:id/common,predicate=tpc:on_ground] run function tpc:private/control/move/jump with storage tpc:temp cache.vector_offset

