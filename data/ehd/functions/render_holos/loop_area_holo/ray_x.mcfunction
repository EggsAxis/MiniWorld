scoreboard players remove .x ehd_raycast 1


## Move x_looper in hologram
execute as @e[type=marker,tag=holo_looper,tag=x_looper,limit=1] at @s run tp @s ^ ^ ^.08


### Start ray in y direction 
## Summon y_looper

kill @e[type=marker,tag=holo_looper,tag=y_looper]

execute if score .sizeY ehd_pos matches 1.. as @e[type=marker,tag=holo_looper,tag=x_looper,limit=1] at @s run summon marker ~ ~-0.08 ~ {Tags:["holo_looper","y_looper"]}
execute if score .sizeY ehd_pos matches ..0 as @e[type=marker,tag=holo_looper,tag=x_looper,limit=1] at @s run summon marker ~ ~0.08 ~ {Tags:["holo_looper","y_looper"]}


## Init loop
scoreboard players operation .y ehd_raycast = .y_val ehd_raycast
scoreboard players add .y ehd_raycast 1
execute if score .sizeY ehd_pos matches 1.. rotated 0 -90 run function ehd:render_holos/loop_area_holo/ray_y
execute if score .sizeY ehd_pos matches ..0 rotated 0 90 run function ehd:render_holos/loop_area_holo/ray_y



execute unless score .x ehd_raycast matches ..0 positioned ^ ^ ^1 run function ehd:render_holos/loop_area_holo/ray_x