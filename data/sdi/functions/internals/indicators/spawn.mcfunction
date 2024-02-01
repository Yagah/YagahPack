###################
# IN:
#   [STORAGE] sditemp CustomName = o nome a dar ao armor stand
########################
summon armor_stand ^ ^ ^ {Marker:1b,Invisible:1b,DisabledSlots:4144959,Tags:["sdi","sdi.indicator.init"]}
execute as @e[type=#sdi:is_indicator,limit=1,sort=nearest,tag=sdi.indicator.init] run function sdi:internals/indicators/spawn/init