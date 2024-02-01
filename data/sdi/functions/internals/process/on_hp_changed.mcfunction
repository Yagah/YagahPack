#######################
# IN:
#   [SCORE] #hp sdi.temp = vida atual da entidade * 100
#   [SCORE] #absorption sdi.temp = absorção da entidade * 100
#   [SCORE] #total_hp sdi.temp = soma da absorção e da vida * 100
#
# LOCAL:
#   [SCORE] #hp_diff sdi.temp = diferença da vida * 100
#   [SCORE] #absorption_diff sdi.temp = diferença da absorção * 100
#   [SCORE] #total_hp_diff sdi.temp = diferença da vida total * 100
#   [SCORE] #total_hp_diff_abs sdi.temp = diferença da vida total sempre positiva * 100
#   [SCORE] #total_hp_diff_abs_int sdi.temp = diferença da vida total sempre positiva
#   [SCORE] #total_hp_diff_abs_dec_int_pad sdi.temp = decimais da diferença da vida total sempre positiva
#   [SCORE] (bool) #is_damage sdi.temp = se é dano ou não
#   [STORAGE] sditemp CustomName = nome final 
########################
scoreboard players operation #hp_diff sdi.temp = #hp sdi.temp
scoreboard players operation #hp_diff sdi.temp -= @s sdi.hp.old
scoreboard players operation #absorption_diff sdi.temp = #absorption sdi.temp
scoreboard players operation #absorption_diff sdi.temp -= @s sdi.abs.old
scoreboard players operation #total_hp_diff sdi.temp = #total_hp sdi.temp
execute store result score #total_hp_diff_abs sdi.temp run scoreboard players operation #total_hp_diff sdi.temp -= @s sdi.thp.old
execute if score #total_hp_diff_abs sdi.temp matches ..-1 run scoreboard players operation #total_hp_diff_abs sdi.temp *= #-1 sdi.const
scoreboard players operation #total_hp_diff_abs_int sdi.temp = #total_hp_diff_abs sdi.temp
scoreboard players operation #total_hp_diff_abs_int sdi.temp /= #health_scale sdi.settings

scoreboard players operation #tmp sdi.temp = #total_hp_diff_abs_int sdi.temp
scoreboard players operation #tmp sdi.temp *= #health_scale sdi.settings
scoreboard players operation #total_hp_diff_abs_dec_int_pad sdi.temp = #total_hp_diff_abs sdi.temp
scoreboard players operation #total_hp_diff_abs_dec_int_pad sdi.temp -= #tmp sdi.temp

#pad
scoreboard players operation #tmp sdi.temp = #total_hp_diff_abs_dec_int_pad sdi.temp
scoreboard players operation #tmp sdi.temp %= #10 sdi.const
execute if score #tmp sdi.temp matches 0 run scoreboard players operation #total_hp_diff_abs_dec_int_pad sdi.temp /= #10 sdi.const

scoreboard players operation #tmp sdi.temp = #total_hp_diff_abs_dec_int_pad sdi.temp
scoreboard players operation #tmp sdi.temp %= #10 sdi.const
execute if score #tmp sdi.temp matches 0 run scoreboard players operation #total_hp_diff_abs_dec_int_pad sdi.temp /= #10 sdi.const
#is_damage

execute store success score #is_damage sdi.temp if score #total_hp_diff sdi.temp matches ..-1




#SET TEXT

execute if score %morecolors sdi.settings matches 1.. run function sdi:internals/process/on_hp_changed/get_color
execute if score %morecolors sdi.settings matches ..0 run function sdi:internals/process/on_hp_changed/get_dual_color

execute if score %symbols sdi.settings matches 1.. run function sdi:internals/process/on_hp_changed/get_sym
execute if score %symbols sdi.settings matches ..0 run data modify storage sditemp Symbol set value '""'

function sdi:internals/process/on_hp_changed/get_number




#PARSE STORAGE TO string
execute if score %1_19_or_less_compatibility_mode sdi.settings matches 1 run data modify block 3048293 1 9519580 Text1 set value '[{"nbt":"Color","storage":"sditemp","interpret":true},{"nbt":"Symbol","storage":"sditemp","interpret":true},{"nbt":"Value","storage":"sditemp","interpret":true}]'
execute unless score %1_19_or_less_compatibility_mode sdi.settings matches 1 run data modify block 3048293 1 9519580 front_text.messages[0] set value '[{"nbt":"Color","storage":"sditemp","interpret":true},{"nbt":"Symbol","storage":"sditemp","interpret":true},{"nbt":"Value","storage":"sditemp","interpret":true}]'
#get string for sign
execute if score %1_19_or_less_compatibility_mode sdi.settings matches 1 run data modify storage sditemp CustomName set from block 3048293 1 9519580 Text1
execute unless score %1_19_or_less_compatibility_mode sdi.settings matches 1 run data modify storage sditemp CustomName set from block 3048293 1 9519580 front_text.messages[0]

#summon indicator
execute at @s[type=!#sdi:large,type=!#sdi:small,type=!#sdi:very_small,type=!#sdi:extra_large] positioned ~ ~1 ~ positioned ^0.7 ^ ^ run function sdi:internals/indicators/random_spawn
execute at @s[type=#sdi:very_small] positioned ~ ~.05 ~ positioned ^0.25 ^ ^ run function sdi:internals/indicators/random_spawn
execute at @s[type=#sdi:small] positioned ~ ~.2 ~ positioned ^0.6 ^ ^ run function sdi:internals/indicators/random_spawn
execute at @s[type=#sdi:large] positioned ~ ~.8 ~ positioned ^1.2 ^ ^ run function sdi:internals/indicators/random_spawn
execute at @s[type=#sdi:extra_large] positioned ~ ~.8 ~ positioned ^2.6 ^ ^ run function sdi:internals/indicators/random_spawn

#DEBUGGING
#tellraw @a [{"nbt":"Text1","storage":"sditemp","interpret":true},{"nbt":"Text2","storage":"sditemp","interpret":true}]

scoreboard players reset #total_hp_diff sdi.temp