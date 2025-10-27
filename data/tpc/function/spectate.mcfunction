# $(sub_tag)
# $(tag)

#> remove control:
function tpc:remove

#> prepare for control.
    gamemode adventure @s
    effect give @s invisibility infinite 255 true
    
    tag @s add tpc.spectator
    $tp @s @e[limit=1,sort=random,tag=$(tag)]
#> summon camera
    summon item_display ~ ~ ~ {Tags:["tpc.camera","tpc.temp"]}
    $tag @n[tag=$(tag)] add tpc.temp
    $tag @n[tag=$(tag)] add tpc.spectated.entity
    execute as @e[tag=tpc.spectated.entity] run say hi

#> give same ID
    scoreboard players operation @e[tag=tpc.temp] tpc.id = .global tpc.id
    scoreboard players operation @s tpc.id = .global tpc.id
    scoreboard players add .global tpc.id 1

#> remove temp tag
    tag @e remove tpc.temp
    $tag @e remove $(tag)