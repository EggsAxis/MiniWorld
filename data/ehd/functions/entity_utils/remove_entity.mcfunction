scoreboard players set @a remove_entity 0
scoreboard players enable @a remove_entity

## Message
execute if entity @e[type=marker,tag=ehd_hologram,sort=nearest,distance=..3] run tellraw @s ["",{"text":"[","bold":true,"color":"#B88B3D"},{"text":"MiniWorld","color":"#EAB65D"},{"text":"] ","bold":true,"color":"#B88B3D"},{"text":"Removed nearest hologram.","color":"gold"}]
execute if entity @e[type=marker,tag=ehd_miniature,sort=nearest,distance=..3] run tellraw @s ["",{"text":"[","bold":true,"color":"#B88B3D"},{"text":"MiniWorld","color":"#EAB65D"},{"text":"] ","bold":true,"color":"#B88B3D"},{"text":"Removed nearest miniature.","color":"gold"}]
execute unless entity @e[type=marker,tag=ehd_entity,sort=nearest,distance=..3] run tellraw @s ["",{"text":"[","bold":true,"color":"#B88B3D"},{"text":"MiniWorld","color":"#EAB65D"},{"text":"] ","bold":true,"color":"#B88B3D"},{"text":"Could not find a hologram or miniature within 3 blocks.","color":"#D65757"}]


## Kill everything

tag @e[type=marker,tag=ehd_entity,sort=nearest,distance=..3,limit=1] add toKill

## Holders
execute as @e[type=marker,tag=vertexHolder] if score @s ehd_holoID = @e[type=marker,tag=ehd_entity,tag=toKill,limit=1] ehd_holoID run kill @s
execute as @e[type=marker,tag=dirHolder] if score @s ehd_holoID = @e[type=marker,tag=ehd_entity,tag=toKill,limit=1] ehd_holoID run kill @s

## Miniature Blocks
execute as @e[type=block_display,tag=ehd_miniature_block] if score @s ehd_holoID = @e[type=marker,tag=ehd_miniature,tag=toKill,limit=1] ehd_holoID run kill @s

kill @e[type=marker,tag=ehd_entity,tag=toKill]

