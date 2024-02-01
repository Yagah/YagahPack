#execute if score #air sdi.settings matches 1 run data modify entity @s Air set value 1
#execute if score #air sdi.settings matches -1 run data modify entity @s Air set value 0

execute if score %gravity sdi.settings matches 1.. run function sdi:internals/indicators/update/phisics

#LIFESPAN
scoreboard players add @s sdi.lifetime 1
execute if score @s sdi.lifetime > @s sdi.lifespan run kill @s