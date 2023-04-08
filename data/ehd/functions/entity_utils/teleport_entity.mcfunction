
## Find dirHolder that has same holoID tag
execute as @e[type=marker,tag=dirHolder] if score @s ehd_holoID = @e[type=marker,tag=ehd_entity,tag=editing,limit=1] ehd_holoID run tag @s add sameID

## TP
execute if entity @e[type=marker,tag=ehd_entity,tag=editing] if score @s teleport_entity matches 1 run tp @e[type=marker,tag=ehd_entity,tag=editing,limit=1] ~ ~.04 ~
execute if entity @e[type=marker,tag=ehd_entity,tag=editing] if score @s teleport_entity matches 1 run tp @e[type=marker,tag=dirHolder,tag=sameID,limit=1] ~ ~.1 ~

execute if entity @e[type=marker,tag=ehd_entity,tag=editing] if score @s teleport_entity matches 2.. align xz positioned ~.5 ~.04 ~.5 run tp @e[type=marker,tag=ehd_entity,tag=editing,limit=1] ~ ~ ~
execute if entity @e[type=marker,tag=ehd_entity,tag=editing] if score @s teleport_entity matches 2.. align xz positioned ~.5 ~.1 ~.5 run tp @e[type=marker,tag=dirHolder,tag=sameID,limit=1] ~ ~ ~


## Message
execute if entity @e[type=marker,tag=ehd_hologram,tag=editing] if score @s teleport_entity matches 1 run tellraw @s ["",{"text":"[","bold":true,"color":"#B88B3D"},{"text":"MiniWorld","color":"#EAB65D"},{"text":"] ","bold":true,"color":"#B88B3D"},{"text":"Teleported the hologram in ","color":"gold"},{"text":"edit","color":"#E8B764"},{"text":" mode to you.","color":"gold"}]
execute if entity @e[type=marker,tag=ehd_hologram,tag=editing] if score @s teleport_entity matches 2.. run tellraw @s ["",{"text":"[","bold":true,"color":"#B88B3D"},{"text":"MiniWorld","color":"#EAB65D"},{"text":"] ","bold":true,"color":"#B88B3D"},{"text":"Teleported the hologram in ","color":"gold"},{"text":"edit","color":"#E8B764"},{"text":" mode to you. (Aligned)","color":"gold"}]
execute if entity @e[type=marker,tag=ehd_miniature,tag=editing] if score @s teleport_entity matches 1 run tellraw @s ["",{"text":"[","bold":true,"color":"#B88B3D"},{"text":"MiniWorld","color":"#EAB65D"},{"text":"] ","bold":true,"color":"#B88B3D"},{"text":"Teleported the miniature in ","color":"gold"},{"text":"edit","color":"#E8B764"},{"text":" mode to you.","color":"gold"}]
execute if entity @e[type=marker,tag=ehd_miniature,tag=editing] if score @s teleport_entity matches 2.. run tellraw @s ["",{"text":"[","bold":true,"color":"#B88B3D"},{"text":"MiniWorld","color":"#EAB65D"},{"text":"] ","bold":true,"color":"#B88B3D"},{"text":"Teleported the miniature in ","color":"gold"},{"text":"edit","color":"#E8B764"},{"text":" mode to you. (Aligned)","color":"gold"}]

execute unless entity @e[type=marker,tag=ehd_entity,tag=editing] run tellraw @s ["",{"text":"[","bold":true,"color":"#B88B3D"},{"text":"MiniWorld","color":"#EAB65D"},{"text":"] ","bold":true,"color":"#B88B3D"},{"text":"Did not find a hologram or miniature in edit mode.","color":"#D65757"}]


## rebuild miniature

execute as @e[type=marker,tag=ehd_miniature,tag=editing] run tag @s add rebuild


## Remove tags
tag @e[type=marker,tag=dirHolder,tag=sameID] remove sameID


scoreboard players set @a teleport_entity 0
scoreboard players enable @a teleport_entity