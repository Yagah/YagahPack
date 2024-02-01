###################
# OUT:
#   [SCORE] #hp sdi.temp = o valor da vida atual
#   [SCORE] #absorption sdi.temp = o valor da vida atual
#   [SCORE] #total_hp sdi.temp = o valor da vida atual + absorção
###################

execute if score #health_scale sdi.settings matches 1 run function sdi:internals/process/get_hp_by_scale/1
execute if score #health_scale sdi.settings matches 10 run function sdi:internals/process/get_hp_by_scale/10
execute if score #health_scale sdi.settings matches 100 run function sdi:internals/process/get_hp_by_scale/100
execute if score #health_scale sdi.settings matches 1000 run function sdi:internals/process/get_hp_by_scale/1000
scoreboard players operation #total_hp sdi.temp += #absorption sdi.temp