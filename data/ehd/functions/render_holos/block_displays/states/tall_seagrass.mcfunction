execute if block ~ ~ ~ tall_seagrass[half="lower"] at @e[type=marker,tag=holo_looper,tag=z_looper,limit=1] run summon block_display ~ ~ ~ {block_state:{Name: "minecraft:tall_seagrass", Properties:{half:"lower"}}, Tags:["just_placed","ehd_miniature_block"], view_range:0.0f}
execute if block ~ ~ ~ tall_seagrass[half="upper"] at @e[type=marker,tag=holo_looper,tag=z_looper,limit=1] run summon block_display ~ ~ ~ {block_state:{Name: "minecraft:tall_seagrass", Properties:{half:"upper"}}, Tags:["just_placed","ehd_miniature_block"], view_range:0.0f}