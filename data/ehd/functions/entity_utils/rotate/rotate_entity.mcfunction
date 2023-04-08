
## Copy rotation to dirHolder
execute if entity @e[type=marker,tag=ehd_entity,tag=editing,distance=..3] if score @s rotate_entity matches -1 as @e[type=marker,tag=dirHolder,tag=editing,distance=..3,limit=1] positioned as @s run tp @s ~ ~ ~ ~ 0

## Set rotation of dirHolder
execute if entity @e[type=marker,tag=ehd_entity,tag=editing,distance=..3] if score @s rotate_entity matches 0.. run function ehd:entity_utils/rotate/set_rotation


## Message

execute unless entity @e[type=marker,tag=ehd_entity,tag=editing,distance=..3] run tellraw @s ["",{"text":"[","bold":true,"color":"#B88B3D"},{"text":"MiniWorld","color":"#EAB65D"},{"text":"] ","bold":true,"color":"#B88B3D"},{"text":"Could not find a hologram or miniature in edit mode within 3 blocks.","color":"#D65757"}]
execute if entity @e[type=marker,tag=ehd_entity,tag=editing,distance=..3] if score @s rotate_entity matches ..-2 run tellraw @s ["",{"text":"[","bold":true,"color":"#B88B3D"},{"text":"MiniWorld","color":"#EAB65D"},{"text":"] ","bold":true,"color":"#B88B3D"},{"text":"Please enter a valid value in [-1, ->].","color":"#D65757"}]

execute if entity @e[type=marker,tag=ehd_hologram,tag=editing,distance=..3] if score @s rotate_entity matches -1 run tellraw @s ["",{"text":"[","bold":true,"color":"#B88B3D"},{"text":"MiniWorld","color":"#EAB65D"},{"text":"] ","bold":true,"color":"#B88B3D"},{"text":"Copied your rotation to the nearest hologram.","color":"gold"}]
execute if entity @e[type=marker,tag=ehd_miniature,tag=editing,distance=..3] if score @s rotate_entity matches -1 run tellraw @s ["",{"text":"[","bold":true,"color":"#B88B3D"},{"text":"MiniWorld","color":"#EAB65D"},{"text":"] ","bold":true,"color":"#B88B3D"},{"text":"Copied your rotation to the nearest miniature.","color":"gold"}]


## rebuild miniature

execute as @e[type=marker,tag=ehd_miniature,tag=editing,distance=..3] run tag @s add rebuild

## Reset scoreboard


scoreboard players enable @a rotate_entity
scoreboard players set @a rotate_entity -987