## Find parent hologram

tag @s add me
execute as @e[type=marker,tag=ehd_entity,tag=editing] if score @s ehd_holoID = @e[type=marker,tag=dirHolder,tag=me,limit=1] ehd_holoID run tag @s add parent


## Initialize raycast

scoreboard players set .ray ehd_raycast 8
execute positioned as @e[type=marker,tag=ehd_entity,tag=parent,tag=editing,limit=1] positioned ^ ^.1 ^0.5 run function ehd:draw_rotation/raycast1


## Remove Tags

tag @s remove me
tag @e[type=marker,tag=ehd_entity,tag=parent] remove parent