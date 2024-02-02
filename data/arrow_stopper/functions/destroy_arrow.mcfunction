# Destroy the article, play a sound, and summon particles
#kill @e[type=arrow,sort=nearest,limit=1]
execute as @e[type=arrow,sort=nearest,limit=1] run data modify entity @s Motion set value [0, -1, 0]
tellraw @a "Arrow Deflected [this is just a temporary message that will be removed later]"
playsound minecraft:block.scaffolding.break player @s ~ ~ ~ 1 1.1
particle minecraft:item minecraft:arrow ~ ~0.5 ~ 0 0 0 0.1 10