execute if block ~ ~ ~ peony[half="lower"] at @e[type=marker,tag=holo_looper,tag=z_looper,limit=1] run summon block_display ~ ~ ~ {block_state:{Name: "minecraft:peony", Properties:{half:"lower"}}, Tags:["just_placed","ehd_miniature_block"], view_range:0.0f}
execute if block ~ ~ ~ peony[half="upper"] at @e[type=marker,tag=holo_looper,tag=z_looper,limit=1] run summon block_display ~ ~ ~ {block_state:{Name: "minecraft:peony", Properties:{half:"upper"}}, Tags:["just_placed","ehd_miniature_block"], view_range:0.0f}
