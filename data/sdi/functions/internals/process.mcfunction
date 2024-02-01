function sdi:internals/process/get_hp_by_scale


execute unless score @s sdi.thp.version = %current_thp_version sdi.thp.version run function sdi:internals/process/apply_new_hp_version

execute unless score #total_hp sdi.temp = @s sdi.thp.old run function sdi:internals/process/on_hp_changed

scoreboard players operation @s sdi.hp.old = #hp sdi.temp
scoreboard players operation @s sdi.abs.old = #absorption sdi.temp
scoreboard players operation @s sdi.thp.old = #total_hp sdi.temp

#reset scores
scoreboard players reset #hp sdi.temp
scoreboard players reset #absorption sdi.temp
scoreboard players reset #total_hp sdi.temp
scoreboard players reset #total_hp_old sdi.temp