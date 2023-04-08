scoreboard players set .10 ehd_temp 10
scoreboard players operation .zeros_removed ehd_temp = .size ehd_temp
scoreboard players operation .zeros_removed ehd_temp %= .10 ehd_temp

execute if score .zeros_removed ehd_temp matches 0 run scoreboard players operation .size ehd_temp /= .10 ehd_temp
execute if score .zeros_removed ehd_temp matches 0 run function ehd:entity_utils/size/remove_zeros