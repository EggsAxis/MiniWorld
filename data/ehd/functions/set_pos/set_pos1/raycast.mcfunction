scoreboard players remove .ray ehd_raycast 1

## Edit mode
execute as @s[predicate=ehd:is_sneaking] if entity @e[type=marker,tag=ehd_entity,distance=..1.5] run tag @s add stop_raycast
execute as @s[predicate=ehd:is_sneaking] if entity @e[type=marker,tag=ehd_entity,distance=..1.5] run function ehd:entity_utils/edit_entity

## Rebuild miniature
execute as @s[predicate=!ehd:is_sneaking] if entity @e[type=marker,tag=ehd_miniature,distance=..1.5] run tellraw @s ["",{"text":"[","bold":true,"color":"#B88B3D"},{"text":"MiniWorld","color":"#EAB65D"},{"text":"] ","bold":true,"color":"#B88B3D"},{"text":"Rebuilt miniature.","color":"gold"}]
execute as @s[predicate=!ehd:is_sneaking] if entity @e[type=marker,tag=ehd_miniature,distance=..1.5] run playsound minecraft:block.anvil.step block @s ~ ~ ~ 1 2
execute as @s[predicate=!ehd:is_sneaking] as @e[type=marker,tag=ehd_miniature,distance=..1.5] run tag @s add rebuild

## Set pos
execute as @s[tag=!stop_raycast] unless block ~ ~ ~ air align xyz positioned ~.5 ~.5 ~.5 as @e[type=marker,tag=vertexHolder,tag=pos1,tag=editing,limit=1] run function ehd:set_pos/set_pos1/end
execute as @s[tag=!stop_raycast] unless block ~ ~ ~ air unless entity @e[type=marker,tag=ehd_entity,tag=editing] run tellraw @s ["",{"text":"[","bold":true,"color":"#B88B3D"},{"text":"MiniWorld","color":"#EAB65D"},{"text":"] ","bold":true,"color":"#B88B3D"},{"text":"You need to be editing a hologram if you want to change its bounding box.","color":"#D65757"}]


execute as @s[tag=!stop_raycast] unless entity @e[type=marker,tag=ehd_miniature,distance=..1.5] if score .ray ehd_raycast matches 1.. if block ~ ~ ~ air positioned ^ ^ ^.1 run function ehd:set_pos/set_pos1/raycast

tag @s[tag=stop_raycast] remove stop_raycast