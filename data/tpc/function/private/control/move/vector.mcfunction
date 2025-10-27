


$execute as @s[predicate=tpc:input/a] positioned 0.0 0.0 0.0 rotated as @s rotated ~ 0 positioned ^$(z) ^ ^ summon marker rotated ~-90 ~ run function tpc:private/control/move/apply_motion
$execute as @s[predicate=tpc:input/s] positioned 0.0 0.0 0.0 rotated as @s rotated ~ 0 positioned ^ ^ ^-$(z) summon marker rotated ~-180 ~ run function tpc:private/control/move/apply_motion
$execute as @s[predicate=tpc:input/d] positioned 0.0 0.0 0.0 rotated as @s rotated ~ 0 positioned ^-$(z) ^ ^ summon marker rotated ~-270 ~ run function tpc:private/control/move/apply_motion

$execute as @s[predicate=tpc:input/w] positioned 0.0 0.0 0.0 rotated as @s rotated ~ 0 positioned ^ ^ ^$(z) summon marker rotated ~ ~ run function tpc:private/control/move/apply_motion
$execute as @s[predicate=tpc:input/w,predicate=tpc:input/a] positioned 0.0 0.0 0.0 rotated as @s rotated ~ 0 positioned ^$(z) ^ ^$(z) summon marker rotated as @n[predicate=tpc:id/common,tag=tpc.controlled] rotated ~-45 ~ run function tpc:private/control/move/apply_motion
execute as @s[predicate=tpc:input/w,predicate=tpc:input/s] run return 0
$execute as @s[predicate=tpc:input/w,predicate=tpc:input/d] positioned 0.0 0.0 0.0 rotated as @s rotated ~ 0 positioned ^-$(z) ^ ^$(z) summon marker rotated as @n[predicate=tpc:id/common,tag=tpc.controlled] rotated ~45 ~ run function tpc:private/control/move/apply_motion

$execute as @s[predicate=tpc:input/s] positioned 0.0 0.0 0.0 rotated as @s rotated ~ 0 positioned ^ ^ ^-$(z) rotated as @n[predicate=tpc:id/common,tag=tpc.controlled] summon marker rotated ~ ~ run function tpc:private/control/move/apply_motion
$execute as @s[predicate=tpc:input/s,predicate=tpc:input/a] positioned 0.0 0.0 0.0 rotated as @s rotated ~ 0 positioned ^$(z) ^ ^-$(z) rotated as @n[predicate=tpc:id/common,tag=tpc.controlled] summon marker rotated ~45 ~ run function tpc:private/control/move/apply_motion
$execute as @s[predicate=tpc:input/s,predicate=tpc:input/d] positioned 0.0 0.0 0.0 rotated as @s rotated ~ 0 positioned ^-$(z) ^ ^-$(z) rotated as @n[predicate=tpc:id/common,tag=tpc.controlled] summon marker rotated ~45 ~ run function tpc:private/control/move/apply_motion
