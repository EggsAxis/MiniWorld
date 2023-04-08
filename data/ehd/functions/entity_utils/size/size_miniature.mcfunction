

## Rebuild
execute as @s[scores={size_miniature=1..8}] run tag @e[type=marker,tag=ehd_miniature,tag=editing,distance=..5] add rebuild


## Set block size size
execute as @s[scores={size_miniature=1..8}] if entity @e[type=marker,tag=ehd_miniature,tag=editing,distance=..5] run scoreboard players set .3125 ehd_temp 3125
execute as @s[scores={size_miniature=1..8}] if entity @e[type=marker,tag=ehd_miniature,tag=editing,distance=..5] run scoreboard players operation @e[type=marker,tag=ehd_miniature,tag=editing,distance=..5] ehd_size = @s size_miniature
execute as @s[scores={size_miniature=1..8}] if entity @e[type=marker,tag=ehd_miniature,tag=editing,distance=..5] run scoreboard players operation .size ehd_temp = @s size_miniature
execute as @s[scores={size_miniature=1..8}] if entity @e[type=marker,tag=ehd_miniature,tag=editing,distance=..5] run scoreboard players operation .size ehd_temp *= .3125 ehd_temp
execute as @s[scores={size_miniature=1..8}] if entity @e[type=marker,tag=ehd_miniature,tag=editing,distance=..5] run function ehd:entity_utils/size/remove_zeros

#### Message
## Error
execute unless entity @e[type=marker,tag=ehd_miniature,tag=editing,distance=..5] run tellraw @s ["",{"text":"[","bold":true,"color":"#B88B3D"},{"text":"MiniWorld","color":"#EAB65D"},{"text":"] ","bold":true,"color":"#B88B3D"},{"text":"Could not find a miniature within 5 blocks in edit mode.","color":"#D65757"}]
execute if entity @e[type=marker,tag=ehd_miniature,tag=editing,distance=..5] unless entity @s[scores={size_miniature=1..8}] run tellraw @s ["",{"text":"[","bold":true,"color":"#B88B3D"},{"text":"MiniWorld","color":"#EAB65D"},{"text":"] ","bold":true,"color":"#B88B3D"},{"text":"Please enter a valid value (From 1 to 8).","color":"#D65757"}]
## Success

execute as @s[scores={size_miniature=1..3}] if entity @e[type=marker,tag=ehd_miniature,tag=editing,distance=..5] run tellraw @s ["",{"text":"[","bold":true,"color":"#B88B3D"},{"text":"MiniWorld","color":"#EAB65D"},{"text":"] ","bold":true,"color":"#B88B3D"},{"text":"Set the miniature's size to ","color":"gold"},{"score":{"name":"@s","objective":"size_miniature"},"color":"#E8B764"},{"text":". (","color":"gold"},{"text":"0.0","color":"#E8B764"},{"score":{"name":".size","objective":"ehd_temp"},"color":"#E8B764"},{"text":" blocks)","color":"gold"}]
execute as @s[scores={size_miniature=4..8}] if entity @e[type=marker,tag=ehd_miniature,tag=editing,distance=..5] run tellraw @s ["",{"text":"[","bold":true,"color":"#B88B3D"},{"text":"MiniWorld","color":"#EAB65D"},{"text":"] ","bold":true,"color":"#B88B3D"},{"text":"Set the miniature's size to ","color":"gold"},{"score":{"name":"@s","objective":"size_miniature"},"color":"#E8B764"},{"text":". (","color":"gold"},{"text":"0.","color":"#E8B764"},{"score":{"name":".size","objective":"ehd_temp"},"color":"#E8B764"},{"text":" blocks)","color":"gold"}]


## Reset scoreboard
scoreboard players set @a size_miniature 0
scoreboard players enable @a size_miniature