scoreboard players set @a switch_entity 0 
scoreboard players enable @a switch_entity

tag @e[type=marker,tag=ehd_entity,sort=nearest,distance=..3] add toSwitch
tag @e[type=marker,tag=ehd_miniature,tag=toSwitch] add rebuild


## Switch

execute as @e[type=marker,tag=toSwitch,tag=on] run tag @s add toOff
execute as @e[type=marker,tag=toSwitch,tag=toOff] run tag @s remove on
execute as @e[type=marker,tag=toSwitch,tag=toOff] run tag @s add off

execute as @e[type=marker,tag=toSwitch,tag=!toOff,tag=off] run tag @s add on
execute as @e[type=marker,tag=toSwitch,tag=!toOff,tag=off] run tag @s remove off


## Message

execute unless entity @e[type=marker,tag=toSwitch,distance=..3] run tellraw @s ["",{"text":"[","bold":true,"color":"#B88B3D"},{"text":"MiniWorld","color":"#EAB65D"},{"text":"] ","bold":true,"color":"#B88B3D"},{"text":"Could not find a hologram or miniature within 3 blocks.","color":"#D65757"}]

execute if entity @e[type=marker,tag=ehd_hologram,tag=toSwitch,distance=..3,tag=on] run tellraw @s ["",{"text":"[","bold":true,"color":"#B88B3D"},{"text":"MiniWorld","color":"#EAB65D"},{"text":"] ","bold":true,"color":"#B88B3D"},{"text":"Turned nearest hologram ","color":"gold"},{"text":"ON","color":"#E8B764"},{"text":".","color":"gold"}]
execute if entity @e[type=marker,tag=ehd_hologram,tag=toSwitch,distance=..3,tag=off] run tellraw @s ["",{"text":"[","bold":true,"color":"#B88B3D"},{"text":"MiniWorld","color":"#EAB65D"},{"text":"] ","bold":true,"color":"#B88B3D"},{"text":"Turned nearest hologram ","color":"gold"},{"text":"OFF","color":"#E8B764"},{"text":".","color":"gold"}]
execute if entity @e[type=marker,tag=ehd_miniature,tag=toSwitch,distance=..3,tag=on] run tellraw @s ["",{"text":"[","bold":true,"color":"#B88B3D"},{"text":"MiniWorld","color":"#EAB65D"},{"text":"] ","bold":true,"color":"#B88B3D"},{"text":"Turned nearest miniature ","color":"gold"},{"text":"ON","color":"#E8B764"},{"text":".","color":"gold"}]
execute if entity @e[type=marker,tag=ehd_miniature,tag=toSwitch,distance=..3,tag=off] run tellraw @s ["",{"text":"[","bold":true,"color":"#B88B3D"},{"text":"MiniWorld","color":"#EAB65D"},{"text":"] ","bold":true,"color":"#B88B3D"},{"text":"Turned nearest miniature ","color":"gold"},{"text":"OFF","color":"#E8B764"},{"text":".","color":"gold"}]


## Kill all block_displays that belong to the miniature
execute as @e[type=block_display,tag=ehd_miniature_block,distance=..5] if score @s ehd_holoID = @e[type=marker,tag=ehd_miniature,tag=toSwitch,limit=1] ehd_holoID run kill @s



## Remove tags
tag @e[type=marker,tag=ehd_entity,distance=..3] remove toOff
tag @e[type=marker,tag=ehd_entity,distance=..3] remove toSwitch