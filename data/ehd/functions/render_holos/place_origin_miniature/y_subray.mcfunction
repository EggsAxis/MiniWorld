scoreboard players remove .sub ehd_raycast 1

execute if score .sub ehd_raycast matches ..0 run function ehd:render_holos/place_origin_miniature/yray

execute unless score .sub ehd_raycast matches ..0 unless score .dy ehd_holo matches ..0 positioned ^ ^ ^0.015625 run function ehd:render_holos/place_origin_miniature/y_subray