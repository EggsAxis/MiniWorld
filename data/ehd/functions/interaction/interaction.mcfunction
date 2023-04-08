tag @s add me

## Make sure that everyone has an ID
scoreboard players add @a ehd_holoID 0
execute as @s[scores={ehd_holoID=0}] run function ehd:interaction/give_id

## Check if there is an interaction box if needed
execute as @s[nbt={SelectedItem:{id:"minecraft:lightning_rod",tag:{Wand:1b}}}] as @e[type=interaction,tag=ehd_interaction_box] if score @s ehd_holoID = @p[tag=me] ehd_holoID run tag @s add sameID
execute as @s[nbt={SelectedItem:{id:"minecraft:lightning_rod",tag:{Wand:1b}}}] unless entity @e[type=interaction,tag=ehd_interaction_box,tag=sameID] anchored eyes run function ehd:interaction/summon_interaction_box


## Remove interaction box if needed
execute as @s[nbt=!{SelectedItem:{id:"minecraft:lightning_rod",tag:{Wand:1b}}}] as @e[type=interaction,tag=ehd_interaction_box] if score @s ehd_holoID = @p[tag=me] ehd_holoID run kill @s

## Teleport interaction to me
execute as @s[nbt={SelectedItem:{id:"minecraft:lightning_rod",tag:{Wand:1b}}}] as @e[type=interaction,tag=ehd_interaction_box] if score @s ehd_holoID = @p[tag=me] ehd_holoID at @p[tag=me] anchored eyes positioned ^ ^ ^1 run tp @s ~ ~ ~

## Remove Tags
tag @e[type=interaction,tag=ehd_interaction_box,tag=sameID] remove sameID
tag @a[tag=me] remove me