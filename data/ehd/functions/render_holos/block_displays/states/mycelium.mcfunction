execute if block ~ ~ ~ mycelium[snowy="true"] at @e[type=marker,tag=holo_looper,tag=z_looper,limit=1] run summon block_display ~ ~ ~ {block_state:{Name: "minecraft:mycelium", Properties:{snowy:"true"}}, Tags:["just_placed","ehd_miniature_block"], view_range:0.0f}
execute if block ~ ~ ~ mycelium[snowy="false"] at @e[type=marker,tag=holo_looper,tag=z_looper,limit=1] run summon block_display ~ ~ ~ {block_state:{Name: "minecraft:mycelium", Properties:{snowy:"false"}}, Tags:["just_placed","ehd_miniature_block"], view_range:0.0f}