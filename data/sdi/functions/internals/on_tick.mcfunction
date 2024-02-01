#update indicators
execute as @e[type=#sdi:is_indicator,tag=sdi] at @s run function sdi:internals/indicators/update

#process entities
execute if score %groups sdi.settings matches 1.. run function sdi:internals/on_tick/update_entity_by_groups
execute if score %groups sdi.settings matches ..0 as @e[type=!#sdi:ignore,tag=!sdi.ignore] at @s run function sdi:internals/process

execute as @a[tag=sdi.settings] run function sdi:internals/settings/display