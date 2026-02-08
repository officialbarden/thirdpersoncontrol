execute store result score #X tpc.MovementSpeed run data get entity @s Pos[0] 1000
execute store result score #Y tpc.MovementSpeed run data get entity @s Pos[1] 1000
execute store result score #Z tpc.MovementSpeed run data get entity @s Pos[2] 1000

scoreboard players operation #X tpc.MovementSpeed *= @p[predicate=tpc:id/common] tpc.MovementSpeed
scoreboard players operation #Y tpc.MovementSpeed *= @p[predicate=tpc:id/common] tpc.JumpStrength
scoreboard players operation #Z tpc.MovementSpeed *= @p[predicate=tpc:id/common] tpc.MovementSpeed
