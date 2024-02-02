# Destroy the article, play a sound, and summon particles
execute at @s run give @p minecraft:arrow
kill @e[type=arrow,sort=nearest,limit=1]
tellraw @a "Arrow Caught [this is just a temporary message that will be removed later]"
playsound minecraft:block.scaffolding.hit player @s ~ ~ ~ 1 1.1