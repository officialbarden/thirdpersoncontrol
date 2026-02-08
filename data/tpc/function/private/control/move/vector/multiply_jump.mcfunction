execute store result score #Y tpc.JumpStrength run data get entity @s Pos[1] 1000

scoreboard players operation #Y tpc.JumpStrength *= @p[predicate=tpc:id/common] tpc.JumpStrength
