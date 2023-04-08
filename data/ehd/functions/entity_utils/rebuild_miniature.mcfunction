scoreboard players set @a rebuild_miniature 0
scoreboard players enable @a rebuild_miniature


## rebuild

tag @e[type=marker,tag=ehd_miniature,distance=..3,limit=1] add rebuild


## Message
execute if entity @e[type=marker,tag=ehd_miniature,distance=..3] run tellraw @s ["",{"text":"[","bold":true,"color":"#B88B3D"},{"text":"MiniWorld","color":"#EAB65D"},{"text":"] ","bold":true,"color":"#B88B3D"},{"text":"Rebuilt the nearest miniature.","color":"gold"}]
execute unless entity @e[type=marker,tag=ehd_miniature,distance=..3] run tellraw @s ["",{"text":"[","bold":true,"color":"#B88B3D"},{"text":"MiniWorld","color":"#EAB65D"},{"text":"] ","bold":true,"color":"#B88B3D"},{"text":"Could not find a miniature within 3 blocks.","color":"#D65757"}]