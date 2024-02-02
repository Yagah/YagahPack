execute as @e[type=arrow] at @s store result score @s vel_x2 run data get entity @s Motion[0] 10
execute as @e[type=arrow] at @s store result score @s vel_y2 run data get entity @s Motion[1] 10
execute as @e[type=arrow] at @s store result score @s vel_z2 run data get entity @s Motion[2] 10

#scoreboard players operation @s vel_x2 -= @s vel_x
tag @s add motion_modified 
