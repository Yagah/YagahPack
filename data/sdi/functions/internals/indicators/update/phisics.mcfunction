#PHISICS
execute store result score #pos.y sdi.temp run data get entity @s Pos[1] 32

#add motion
execute store result entity @s Pos[1] double .03125 run scoreboard players operation #pos.y sdi.temp += @s sdi.motion.y

#apply graviy to motion
execute if score @s sdi.motion.y matches 1.. run scoreboard players remove @s sdi.motion.y 1
execute if score @s[tag=!sdi.indicator.h] sdi.motion.y matches ..0 run scoreboard players remove @s sdi.motion.y 3

#insert into pos
scoreboard players reset #pox.y sdi.temp