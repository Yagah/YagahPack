data modify entity @s CustomName set from storage sditemp CustomName
data modify entity @s CustomNameVisible set value 1b

scoreboard players set @s sdi.lifespan 10
scoreboard players set @s sdi.motion.y 5

tag @s remove sdi.indicator.init

execute if score #is_damage sdi.temp matches 0 run tag @s add sdi.indicator.h

data modify entity @s Air set value 1