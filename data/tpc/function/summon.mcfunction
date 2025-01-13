# $(entity) 


#> summon entity
    $summon $(entity) ~ ~ ~ {Tags:["tpc.controlled","tpc.temp","tpc.entity"],Passengers:[{id:"marker",data:{name:"$(entity)"},Tags:["tpc.temp","tpc.controlled.info"]}]}
    effect give @e[tag=tpc.temp] slowness infinite 255 true
#> summon camera
    summon item_display ~ ~ ~ {Tags:["tpc.camera","tpc.temp"]}
#> create team
    execute store result storage tpc:temp cache.macro.ID int 1 run scoreboard players get .global tpc.id
    function tpc:private/team/create with storage tpc:temp cache.macro
#> GIVE invisibility
    effect give @s invisibility infinite 255 true
#> MODIFY ATTRIBUTES
    function tpc:private/modify/attributes
#> give same ID
    scoreboard players operation @e[tag=tpc.temp] tpc.id = .global tpc.id
    scoreboard players operation @s tpc.id = .global tpc.id
    scoreboard players add .global tpc.id 1
#> prepare for control
    tag @s add tpc.controller
    gamemode spectator @s

#> remove temp tag
tag @e remove tpc.temp

effect give @s regeneration 10 255 true