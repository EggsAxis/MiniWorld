
## set range of Y 
scoreboard players set .-1 ehd_temp -1
scoreboard players operation .y ehd_raycast = .sizeY ehd_pos
execute if score .y ehd_raycast matches ..-1 run scoreboard players operation .y ehd_raycast *= .-1 ehd_temp
scoreboard players add .y ehd_raycast 1

