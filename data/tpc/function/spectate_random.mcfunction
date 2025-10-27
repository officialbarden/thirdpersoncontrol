# $(sub_tag)

#> remove control:
function tpc:remove

$tag @e[sort=random,limit=1,tag=$(sub_tag)] add tpc.spectate.temp


#> summon camera
    summon item_display ~ ~ ~ {Tags:["tpc.camera","tpc.temp"]}
    tag @n[tag=tpc.spectate.temp] add tpc.temp
    tag @n[tag=tpc.spectate.temp] add tpc.spectated.entity
    execute as @e[tag=tpc.spectated.entity] run say hi

#> give same ID
    scoreboard players operation @e[tag=tpc.temp] tpc.id = .global tpc.id
    scoreboard players operation @s tpc.id = .global tpc.id
    scoreboard players add .global tpc.id 1

#> prepare for control.
    gamemode spectator @s
    tag @s add tpc.spectator

#> remove temp tag
    tag @e remove tpc.temp
    tag @e remove tpc.spectate.temp