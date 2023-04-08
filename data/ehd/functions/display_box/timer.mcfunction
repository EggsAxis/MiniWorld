scoreboard players add .timer ehd_box 1

execute if score .timer ehd_box matches 3.. as @e[type=marker,tag=ehd_entity,tag=editing,limit=1] run function ehd:display_box/start_drawing
execute if score .timer ehd_box matches 3.. run scoreboard players set .timer ehd_box 0