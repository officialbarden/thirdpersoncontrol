execute as @s[predicate=tpc:input/w,predicate=tpc:input/s] run return 0
execute as @s[predicate=tpc:input/w,predicate=tpc:input/a] rotated as @s rotated ~-45 0 positioned 0.0 0.0 0.0 positioned ^ ^ ^1 summon marker run return run function tpc:private/control/move/summon_unitvec
execute as @s[predicate=tpc:input/w,predicate=tpc:input/s] run return 0
execute as @s[predicate=tpc:input/w,predicate=tpc:input/d] rotated as @s rotated ~45 0 positioned 0.0 0.0 0.0 positioned ^ ^ ^1 summon marker run return run function tpc:private/control/move/summon_unitvec
execute as @s[predicate=tpc:input/s,predicate=tpc:input/a] rotated as @s rotated ~-135 0 positioned 0.0 0.0 0.0 positioned ^ ^ ^1 summon marker run return run function tpc:private/control/move/summon_unitvec
execute as @s[predicate=tpc:input/s,predicate=tpc:input/d] rotated as @s rotated ~135 0 positioned 0.0 0.0 0.0 positioned ^ ^ ^1 summon marker run return run function tpc:private/control/move/summon_unitvec

execute rotated as @s[predicate=tpc:input/w] positioned 0.0 0.0 0.0 rotated ~ 0 positioned ^ ^ ^1 summon marker run return run function tpc:private/control/move/summon_unitvec
execute rotated as @s[predicate=tpc:input/a] positioned 0.0 0.0 0.0 rotated ~-90 0 positioned ^ ^ ^1 summon marker run return run function tpc:private/control/move/summon_unitvec
execute rotated as @s[predicate=tpc:input/s] positioned 0.0 0.0 0.0 rotated ~-180 0 positioned ^ ^ ^1 summon marker run return run function tpc:private/control/move/summon_unitvec
execute rotated as @s[predicate=tpc:input/d] positioned 0.0 0.0 0.0 rotated ~-270 0 positioned ^ ^ ^1 summon marker run return run function tpc:private/control/move/summon_unitvec

