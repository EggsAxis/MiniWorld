execute if block ~ ~ ~ player_wall_head[facing="east"] at @e[type=marker,tag=holo_looper,tag=z_looper,limit=1] run summon block_display ~ ~ ~ {block_state:{Name: "minecraft:player_wall_head", Properties:{facing:"east"}}, Tags:["just_placed","ehd_miniature_block"], view_range:0.0f}
execute if block ~ ~ ~ player_wall_head[facing="north"] at @e[type=marker,tag=holo_looper,tag=z_looper,limit=1] run summon block_display ~ ~ ~ {block_state:{Name: "minecraft:player_wall_head", Properties:{facing:"north"}}, Tags:["just_placed","ehd_miniature_block"], view_range:0.0f}
execute if block ~ ~ ~ player_wall_head[facing="south"] at @e[type=marker,tag=holo_looper,tag=z_looper,limit=1] run summon block_display ~ ~ ~ {block_state:{Name: "minecraft:player_wall_head", Properties:{facing:"south"}}, Tags:["just_placed","ehd_miniature_block"], view_range:0.0f}
execute if block ~ ~ ~ player_wall_head[facing="west"] at @e[type=marker,tag=holo_looper,tag=z_looper,limit=1] run summon block_display ~ ~ ~ {block_state:{Name: "minecraft:player_wall_head", Properties:{facing:"west"}}, Tags:["just_placed","ehd_miniature_block"], view_range:0.0f}