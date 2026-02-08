
# VECTOR OFFSET:

# JUMP
    $execute as @s[predicate=tpc:bool/wasd_check,predicate=tpc:input/jump] store result score @s tpc.JumpStrength run data get storage tpc:entities entity_type[{"name":"$(name)"}].movement.jump 1000
    execute as @s[predicate=tpc:input/jump,tag=!tpc.disabled_jump] if entity @n[type=!#tpc:can_fly,tag=tpc.controlled,predicate=tpc:id/common,predicate=tpc:on_ground] run function tpc:private/control/move/jump
    execute as @s[predicate=tpc:input/jump,tag=!tpc.disabled_jump] if entity @n[type=#tpc:can_fly,tag=tpc.controlled,predicate=tpc:id/common] run function tpc:private/control/move/jump
# NO SPRINT:
# FORWARDS:
    #$execute \
        as @s[predicate=tpc:bool/wasd_check,predicate=!tpc:input/sprint] \
        store result storage tpc:temp cache.vector_offset.z double 0.1 \
        run data get storage tpc:entities entity_type[{"name":"$(name)"}].movement.walk 1

    $execute as @s[predicate=tpc:bool/wasd_check,predicate=!tpc:input/sprint] store result score @s tpc.MovementSpeed run data get storage tpc:entities entity_type[{"name":"$(name)"}].movement.walk 1000
    execute as @s[predicate=tpc:bool/wasd_check,predicate=!tpc:input/sprint] run return run function tpc:private/control/move/vector


# WITH SPRINT:
# FORWARDS:
    #$execute \
        as @s[predicate=tpc:bool/wasd_check,predicate=tpc:input/sprint] \
        store result storage tpc:temp cache.vector_offset.z double 0.1 \
        run data get storage tpc:entities entity_type[{"name":"$(name)"}].movement.run 1
    $execute as @s[predicate=tpc:bool/wasd_check,predicate=tpc:input/sprint] store result score @s tpc.MovementSpeed run data get storage tpc:entities entity_type[{"name":"$(name)"}].movement.run 1000
    execute as @s[predicate=tpc:bool/wasd_check,predicate=tpc:input/sprint] run return run function tpc:private/control/move/vector with storage tpc:temp cache.vector_offset


