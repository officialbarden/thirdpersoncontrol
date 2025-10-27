# WALK:
    execute \
        rotated as @s \
        at @n[type=!#tpc:can_fly,tag=tpc.controlled,predicate=tpc:id/common] \
        run return run function tpc:private/control/move/get_values with entity @n[tag=tpc.controlled.info,predicate=tpc:id/common] data

    execute \
        rotated as @s \
        at @n[type=#tpc:can_fly,tag=tpc.controlled,predicate=tpc:id/common] \
        run return run function tpc:private/control/move/get_values with entity @n[tag=tpc.controlled.info,predicate=tpc:id/common] data
