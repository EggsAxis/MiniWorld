
## set range of Z
scoreboard players set .-1 ehd_temp -1
scoreboard players operation .z ehd_raycast = .sizeZ ehd_pos
execute if score .z ehd_raycast matches ..-1 run scoreboard players operation .z ehd_raycast *= .-1 ehd_temp
scoreboard players add .z ehd_raycast 1

