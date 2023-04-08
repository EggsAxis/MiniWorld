scoreboard players set @a edit_entity 0
scoreboard players enable @a edit_entity


## Edit

tag @e[type=marker,tag=ehd_entity,sort=nearest,distance=..8,limit=1,tag=!editing] add startedEditing
tag @e[type=marker,tag=ehd_entity,sort=nearest,distance=..8,limit=1,tag=!editing] add editing

tag @e[type=marker,tag=ehd_entity,tag=editing,tag=!startedEditing] remove editing
tag @e[type=marker,tag=ehd_entity,sort=nearest,distance=..8,limit=1,tag=startedEditing] remove startedEditing


## Give vertexHolders and dirHolders editing tag

tag @e[type=marker,tag=vertexHolder,tag=editing] remove editing
tag @e[type=marker,tag=dirHolders,tag=editing] remove editing
execute as @e[type=marker,tag=vertexHolder] if score @s ehd_holoID = @e[type=marker,tag=ehd_entity,tag=editing,limit=1] ehd_holoID run tag @s add editing
execute as @e[type=marker,tag=dirHolder] if score @s ehd_holoID = @e[type=marker,tag=ehd_entity,tag=editing,limit=1] ehd_holoID run tag @s add editing


## Message

execute if entity @e[type=marker,tag=ehd_hologram,tag=editing,distance=..8] run tellraw @s ["",{"text":"[","bold":true,"color":"#B88B3D"},{"text":"MiniWorld","color":"#EAB65D"},{"text":"] ","bold":true,"color":"#B88B3D"},{"text":"Set the nearest hologram's in ","color":"gold"},{"text":"edit","color":"#E8B764"},{"text":" mode.","color":"gold"}]
execute if entity @e[type=marker,tag=ehd_miniature,tag=editing,distance=..8] run tellraw @s ["",{"text":"[","bold":true,"color":"#B88B3D"},{"text":"MiniWorld","color":"#EAB65D"},{"text":"] ","bold":true,"color":"#B88B3D"},{"text":"Set the nearest miniature's in ","color":"gold"},{"text":"edit","color":"#E8B764"},{"text":" mode.","color":"gold"}]
execute if entity @e[type=marker,tag=ehd_hologram,tag=!editing,distance=..8] run tellraw @s ["",{"text":"[","bold":true,"color":"#B88B3D"},{"text":"MiniWorld","color":"#EAB65D"},{"text":"] ","bold":true,"color":"#B88B3D"},{"text":"Set the nearest hologram's in ","color":"gold"},{"text":"normal","color":"#E8B764"},{"text":" mode.","color":"gold"}]
execute if entity @e[type=marker,tag=ehd_miniature,tag=!editing,distance=..8] run tellraw @s ["",{"text":"[","bold":true,"color":"#B88B3D"},{"text":"MiniWorld","color":"#EAB65D"},{"text":"] ","bold":true,"color":"#B88B3D"},{"text":"Set the nearest miniature's in ","color":"gold"},{"text":"normal","color":"#E8B764"},{"text":" mode.","color":"gold"}]

execute unless entity @e[type=marker,tag=ehd_entity,distance=..8] run tellraw @s ["",{"text":"[","bold":true,"color":"#B88B3D"},{"text":"MiniWorld","color":"#EAB65D"},{"text":"] ","bold":true,"color":"#B88B3D"},{"text":"Could not find a hologram or miniature in edit mode within 8 blocks.","color":"#D65757"}]
