# Var color : 232 183 100
# Error color : 214 87 87


## Click detection

execute as @a at @s run function ehd:interaction/interaction

## Commands
function ehd:commands

## OFF particles
execute at @e[type=marker,tag=ehd_entity,tag=off,tag=!editing] run particle dust 1 0 0 0.5 ~ ~ ~ .08 .08 .08 0 5 normal

## set pos of vertices

execute as @a[nbt={SelectedItem:{id:"minecraft:egg",tag:{Wand:1b}}},tag=!sneaking] at @s if entity @e[type=egg,distance=..4] run function ehd:set_pos/set_pos1/start
execute as @a[nbt={SelectedItem:{id:"minecraft:egg",tag:{Wand:1b}}},tag=sneaking] at @s if entity @e[type=egg,distance=..4] run function ehd:set_pos/set_pos2/start


## Draw rotation vector in edit mode

execute as @e[type=marker,tag=dirHolder,tag=editing] at @s if entity @p[distance=..20] positioned as @e[type=marker,tag=ehd_entity,tag=editing,tag=on,limit=1] run function ehd:draw_rotation/draw_rotation


## Display box

function ehd:display_box/timer


## Render holograms

function ehd:render_holos/timer