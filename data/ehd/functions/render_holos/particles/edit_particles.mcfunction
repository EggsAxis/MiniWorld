execute if score .x ehd_raycast matches 0 if score .y ehd_raycast matches 0 at @e[type=marker,tag=holo_looper,tag=z_looper,limit=1] run particle dust 1 0 1 0.2 ~ ~ ~ 0 -1 0 1 0 normal
execute if score .x ehd_raycast matches 0 if score .z ehd_raycast matches 0 at @e[type=marker,tag=holo_looper,tag=z_looper,limit=1] run particle dust 1 0 1 0.2 ~ ~ ~ 0 -1 0 1 0 normal
execute if score .y ehd_raycast matches 0 if score .z ehd_raycast matches 0 at @e[type=marker,tag=holo_looper,tag=z_looper,limit=1] run particle dust 1 0 1 0.2 ~ ~ ~ 0 -1 0 1 0 normal

execute if score .x ehd_raycast matches 0 if score .y ehd_raycast = .y_val ehd_raycast at @e[type=marker,tag=holo_looper,tag=z_looper,limit=1] run particle dust 1 0 1 0.2 ~ ~ ~ 0 -1 0 1 0 normal
execute if score .x ehd_raycast matches 0 if score .z ehd_raycast = .z_val ehd_raycast at @e[type=marker,tag=holo_looper,tag=z_looper,limit=1] run particle dust 1 0 1 0.2 ~ ~ ~ 0 -1 0 1 0 normal
execute if score .y ehd_raycast matches 0 if score .z ehd_raycast = .z_val ehd_raycast at @e[type=marker,tag=holo_looper,tag=z_looper,limit=1] run particle dust 1 0 1 0.2 ~ ~ ~ 0 -1 0 1 0 normal

execute if score .y ehd_raycast matches 0 if score .x ehd_raycast = .x_val ehd_raycast at @e[type=marker,tag=holo_looper,tag=z_looper,limit=1] run particle dust 1 0 1 0.2 ~ ~ ~ 0 -1 0 1 0 normal
execute if score .z ehd_raycast matches 0 if score .x ehd_raycast = .x_val ehd_raycast at @e[type=marker,tag=holo_looper,tag=z_looper,limit=1] run particle dust 1 0 1 0.2 ~ ~ ~ 0 -1 0 1 0 normal
execute if score .z ehd_raycast matches 0 if score .y ehd_raycast = .y_val ehd_raycast at @e[type=marker,tag=holo_looper,tag=z_looper,limit=1] run particle dust 1 0 1 0.2 ~ ~ ~ 0 -1 0 1 0 normal

execute if score .x ehd_raycast = .x_val ehd_raycast if score .y ehd_raycast = .y_val ehd_raycast at @e[type=marker,tag=holo_looper,tag=z_looper,limit=1] run particle dust 1 0 1 0.2 ~ ~ ~ 0 -1 0 1 0 normal
execute if score .x ehd_raycast = .x_val ehd_raycast if score .z ehd_raycast = .z_val ehd_raycast at @e[type=marker,tag=holo_looper,tag=z_looper,limit=1] run particle dust 1 0 1 0.2 ~ ~ ~ 0 -1 0 1 0 normal
execute if score .y ehd_raycast = .y_val ehd_raycast if score .z ehd_raycast = .z_val ehd_raycast at @e[type=marker,tag=holo_looper,tag=z_looper,limit=1] run particle dust 1 0 1 0.2 ~ ~ ~ 0 -1 0 1 0 normal
