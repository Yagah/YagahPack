execute positioned 3048293 1 9519580 run function sdi:internals/uninstall/remove_dedicated_sign
forceload remove 3048293 9519580 

scoreboard objectives remove sdi.settings
scoreboard objectives remove sdi.hp.old 
scoreboard objectives remove sdi.abs.old 
scoreboard objectives remove sdi.thp.old 
scoreboard objectives remove sdi.dmgres 
scoreboard objectives remove sdi.gid 
scoreboard objectives remove sdi.gid.version
scoreboard objectives remove sdi.thp.version
scoreboard objectives remove sdi.temp 
scoreboard objectives remove sdi.lifetime
scoreboard objectives remove sdi.lifespan
scoreboard objectives remove sdi.motion.y
scoreboard objectives remove sdi.const

data remove storage minecraft:sditemp CustomName
data remove storage minecraft:sditemp Symbol
data remove storage minecraft:sditemp Color
data remove storage minecraft:sditemp Number

function sdi:kill_indicators

tellraw @a [{"text":"[","color":"gray"},{"text":"Simple Damage Indicator","color":"red"},{"text":"]","color":"gray"},{"text":" All scoreboards and loaded indicators and dedicated sign have been removed from the world.","color":"green"},{"text":" Remove the datapack before loading/reloading the world.","color":"gold"}]