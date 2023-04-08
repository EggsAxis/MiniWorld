scoreboard players remove .rot ehd_raycast 1

execute if score .rot ehd_raycast matches 0 run tp @s ~ ~ ~ ~ ~

execute unless score .rot ehd_raycast matches ..0 rotated ~1 ~ run function ehd:entity_utils/rotate/rotating