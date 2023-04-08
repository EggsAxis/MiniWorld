scoreboard players remove .dy ehd_holo 1

scoreboard players operation .sub ehd_raycast = @e[type=marker,tag=ehd_entity,tag=drawing,limit=1] ehd_size

execute if score .dy ehd_holo matches ..0 run tp @s ~ ~ ~