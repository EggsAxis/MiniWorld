## Calculate rotation
scoreboard players set .360 ehd_temp 360
scoreboard players operation .rot ehd_raycast = @s rotate_entity
scoreboard players operation .rot ehd_raycast %= .360 ehd_temp

## Message
execute if entity @e[type=marker,tag=ehd_hologram,tag=editing,distance=..3] if score @s rotate_entity matches 1.. run tellraw @s ["",{"text":"[","bold":true,"color":"#B88B3D"},{"text":"MiniWorld","color":"#EAB65D"},{"text":"] ","bold":true,"color":"#B88B3D"},{"text":"Set the rotation of the nearest hologram to ","color":"gold"},{"score":{"name":".rot","objective":"ehd_raycast"},"color":"#E8B764"},{"text":" degrees.","color":"gold"}]
execute if entity @e[type=marker,tag=ehd_miniature,tag=editing,distance=..3] if score @s rotate_entity matches 1.. run tellraw @s ["",{"text":"[","bold":true,"color":"#B88B3D"},{"text":"MiniWorld","color":"#EAB65D"},{"text":"] ","bold":true,"color":"#B88B3D"},{"text":"Set the rotation of the nearest miniature to ","color":"gold"},{"score":{"name":".rot","objective":"ehd_raycast"},"color":"#E8B764"},{"text":" degrees.","color":"gold"}]

## Rotate 
execute as @e[type=marker,tag=dirHolder,tag=editing,distance=..3,limit=1] at @s run tp @s ~ ~ ~ 0 0
execute as @e[type=marker,tag=dirHolder,tag=editing,distance=..3,limit=1] at @s unless score .rot ehd_raycast matches 0 rotated ~1 ~ run function ehd:entity_utils/rotate/rotating