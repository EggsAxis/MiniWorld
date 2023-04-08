scoreboard players add .timer ehd_holo 1

execute if score .timer ehd_holo matches 2.. as @e[type=marker,tag=ehd_miniature,tag=rebuild,tag=on] at @s run function ehd:render_holos/start_rendering
execute if score .timer ehd_holo matches 2.. as @e[type=marker,tag=ehd_hologram,tag=on] at @s if entity @p[distance=..20] run function ehd:render_holos/start_rendering
execute if score .timer ehd_holo matches 2.. run scoreboard players set .timer ehd_holo 0