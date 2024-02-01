###########
# DATAPACK CREATED BY N0DE
###########

scoreboard objectives add sdi.const dummy


execute unless score #-1 sdi.const matches -1 run function sdi:internals/on_load/first_load
execute positioned 3048293 1 9519580 run function sdi:internals/on_load/place_dedicated_sign

scoreboard objectives add sdi.settings dummy "SDI Settings"
execute unless score %decimals sdi.settings matches 0.. run scoreboard players set %decimals sdi.settings 1
execute unless score %groups sdi.settings matches 0.. run scoreboard players set %groups sdi.settings 3
execute unless score %gravity sdi.settings matches 0.. run scoreboard players set %gravity sdi.settings 1
execute unless score %symbols sdi.settings matches 0.. run scoreboard players set %symbols sdi.settings 1
execute unless score %padzero sdi.settings matches 0.. run scoreboard players set %padzero sdi.settings 0
execute unless score %morecolors sdi.settings matches 0.. run scoreboard players set %morecolors sdi.settings 1
execute store success score %1_19_or_less_compatibility_mode sdi.settings if data block 3048293 1 9519580 Text1
function sdi:internals/hp_decimals/get_scale


#scoreboard players set #air sdi.settings 1

scoreboard objectives add sdi.hp.old dummy
scoreboard objectives add sdi.abs.old dummy
scoreboard objectives add sdi.thp.old dummy

scoreboard objectives add sdi.dmgres minecraft.custom:minecraft.damage_resisted

scoreboard objectives add sdi.gid dummy
scoreboard objectives add sdi.gid.version dummy
scoreboard players add %current_gid_version sdi.gid.version 0

scoreboard objectives add sdi.thp.version dummy
scoreboard players add %current_thp_version sdi.thp.version 0

scoreboard objectives add sdi.temp dummy

scoreboard objectives add sdi.lifetime dummy
scoreboard objectives add sdi.lifespan dummy

scoreboard objectives add sdi.motion.y dummy


scoreboard players set #MAX_GROUPS_SIZE sdi.const 9
scoreboard players set #MAX_HEALTH_SCALE sdi.const 3
scoreboard players set #1000 sdi.const 1000
scoreboard players set #100 sdi.const 100
scoreboard players set #10 sdi.const 10
scoreboard players set #4 sdi.const 4
scoreboard players set #2 sdi.const 2
scoreboard players set #-1 sdi.const -1