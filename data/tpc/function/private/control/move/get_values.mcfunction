# VECTOR OFFSET:

# NO SPRINT:
# FORWARDS:
    $execute \
        as @s[predicate=tpc:input/w,predicate=!tpc:input/sprint] \
        store result storage tpc:temp cache.vector_offset.z double 0.1 \
        run data get storage tpc:entities entity_type[{"name":"$(name)"}].movement.walk 1
    function tpc:private/control/move/vector with storage tpc:temp cache.vector_offset

# BACKWARDS:
    $execute \
        as @s[predicate=tpc:input/s,predicate=!tpc:input/sprint] \
        store result storage tpc:temp cache.vector_offset.z double 0.1 \
        run data get storage tpc:entities entity_type[{"name":"$(name)"}].movement.walk 1
    function tpc:private/control/move/vector with storage tpc:temp cache.vector_offset

# LEFT:
    $execute \
        as @s[predicate=tpc:input/a,predicate=!tpc:input/sprint] \
        store result storage tpc:temp cache.vector_offset.z double 0.1 \
        run data get storage tpc:entities entity_type[{"name":"$(name)"}].movement.walk 1
    function tpc:private/control/move/vector with storage tpc:temp cache.vector_offset

# RIGHT:
    $execute \
        as @s[predicate=tpc:input/d,predicate=!tpc:input/sprint] \
        store result storage tpc:temp cache.vector_offset.z double 0.1 \
        run data get storage tpc:entities entity_type[{"name":"$(name)"}].movement.walk 1
    function tpc:private/control/move/vector with storage tpc:temp cache.vector_offset



# WITH SPRINT:
# FORWARDS:
    $execute \
        as @s[predicate=tpc:input/w,predicate=tpc:input/sprint] \
        store result storage tpc:temp cache.vector_offset.z double 0.1 \
        run data get storage tpc:entities entity_type[{"name":"$(name)"}].movement.run 1
    function tpc:private/control/move/vector with storage tpc:temp cache.vector_offset

# BACKWARDS:
    $execute \
        as @s[predicate=tpc:input/s,predicate=tpc:input/sprint] \
        store result storage tpc:temp cache.vector_offset.z double 0.1 \
        run data get storage tpc:entities entity_type[{"name":"$(name)"}].movement.run 1
    function tpc:private/control/move/vector with storage tpc:temp cache.vector_offset

# LEFT:
    $execute \
        as @s[predicate=tpc:input/a,predicate=tpc:input/sprint] \
        store result storage tpc:temp cache.vector_offset.z double 0.1 \
        run data get storage tpc:entities entity_type[{"name":"$(name)"}].movement.run 1
    function tpc:private/control/move/vector with storage tpc:temp cache.vector_offset

# RIGHT:
    $execute \
        as @s[predicate=tpc:input/d,predicate=tpc:input/sprint] \
        store result storage tpc:temp cache.vector_offset.z double 0.1 \
        run data get storage tpc:entities entity_type[{"name":"$(name)"}].movement.run 1
    function tpc:private/control/move/vector with storage tpc:temp cache.vector_offset


# JUMP
    data modify storage tpc:temp cache.vector_offset.y set value 0.0d
    $execute \
        as @s[predicate=tpc:input/jump] \
        store result storage tpc:temp cache.vector_offset.y double 0.1 \
        run data get storage tpc:entities entity_type[{"name":"$(name)"}].movement.jump 1
    function tpc:private/control/move/jump with storage tpc:temp cache.vector_offset
