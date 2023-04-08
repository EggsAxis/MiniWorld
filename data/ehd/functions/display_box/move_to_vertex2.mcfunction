kill @e[type=marker,tag=box_drawer2]
summon marker ~ ~ ~ {Tags:["box_drawer2"]}

execute if score .sizeX ehd_pos matches 1.. as @e[type=marker,tag=box_drawer2] at @s run tp @s ~.5 ~ ~
execute if score .sizeX ehd_pos matches ..0 as @e[type=marker,tag=box_drawer2] at @s run tp @s ~-.5 ~ ~

execute if score .sizeY ehd_pos matches 1.. as @e[type=marker,tag=box_drawer2] at @s run tp @s ~ ~.5 ~
execute if score .sizeY ehd_pos matches ..0 as @e[type=marker,tag=box_drawer2] at @s run tp @s ~ ~-.5 ~

execute if score .sizeZ ehd_pos matches 1.. as @e[type=marker,tag=box_drawer2] at @s run tp @s ~ ~ ~.5
execute if score .sizeZ ehd_pos matches ..0 as @e[type=marker,tag=box_drawer2] at @s run tp @s ~ ~ ~-.5

execute at @e[type=marker,tag=box_drawer2,limit=1] run particle dust 0 0 1 0.5 ~ ~ ~ .08 .08 .08 0 10 normal