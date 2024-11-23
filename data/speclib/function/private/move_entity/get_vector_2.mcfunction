tag @s add motion.player.temp

execute if entity @s[predicate=speclib:input/w,predicate=!speclib:input/sprint] positioned 0.0 0.0 0.0 rotated as @s positioned ^ ^ ^0.2 summon marker run return run function speclib:private/move_entity/set_motion
execute if entity @s[predicate=speclib:input/s,predicate=!speclib:input/sprint] positioned 0.0 0.0 0.0 rotated as @s positioned ^ ^ ^-0.2 summon marker run return run function speclib:private/move_entity/set_motion
execute if entity @s[predicate=speclib:input/a,predicate=!speclib:input/sprint] positioned 0.0 0.0 0.0 rotated as @s positioned ^0.2 ^ ^ summon marker run return run function speclib:private/move_entity/set_motion
execute if entity @s[predicate=speclib:input/d,predicate=!speclib:input/sprint] positioned 0.0 0.0 0.0 rotated as @s positioned ^-0.2 ^ ^ summon marker run return run function speclib:private/move_entity/set_motion

execute if entity @s[predicate=speclib:input/w,predicate=speclib:input/sprint] positioned 0.0 0.0 0.0 positioned ^ ^ ^0.5 summon marker run return run function speclib:private/move_entity/set_motion
execute if entity @s[predicate=speclib:input/s,predicate=speclib:input/sprint] positioned 0.0 0.0 0.0 positioned ^ ^ ^-0.5 summon marker run return run function speclib:private/move_entity/set_motion
execute if entity @s[predicate=speclib:input/a,predicate=speclib:input/sprint] positioned 0.0 0.0 0.0 positioned ^0.5 ^ ^ summon marker run return run function speclib:private/move_entity/set_motion
execute if entity @s[predicate=speclib:input/d,predicate=speclib:input/sprint] positioned 0.0 0.0 0.0 positioned ^-0.5 ^ ^ summon marker run return run function speclib:private/move_entity/set_motion
