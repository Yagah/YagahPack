#Run Damage Indicators
function sdi:internals/on_tick

#Timer Set
execute as @a[scores={timer=1..}] run scoreboard players add @s timer 1
execute as @a[scores={cooldown=1..}] run scoreboard players add @s cooldown 1

#Item Drop Null
execute as @e[type=item,tag=!processed] run data modify entity @s Owner set from entity @s Thrower
execute as @e[type=item,tag=!processed] run data modify entity @s PickupDelay set value 0
tag @e[type=item] add processed

#WHITE ROSE-----------------------------------------------------------------------------------------------------------
#Cooldowns


#Slot Detection
execute if entity @a[team=white,nbt={SelectedItem:{tag:{white1:1}}}] run execute as @a[team=white,nbt={SelectedItem:{tag:{white1:1}}}] run title @s actionbar [{"text":"Teleport","color":"white"}]
execute if entity @a[team=white,nbt={SelectedItem:{tag:{white2:1}}}] run execute as @a[team=white,nbt={SelectedItem:{tag:{white2:1}}}] run title @s actionbar [{"text":"Back Track","color":"white"}]
execute if entity @a[team=white,nbt={SelectedItem:{tag:{white3:1}}}] run execute as @a[team=white,nbt={SelectedItem:{tag:{white3:1}}}] run title @s actionbar [{"text":"Heaven Slam","color":"white"}]
execute if entity @a[team=white,nbt={SelectedItem:{tag:{white4:1}}}] run execute as @a[team=white,nbt={SelectedItem:{tag:{white4:1}}}] run title @s actionbar [{"text":"Super Flying Punch Barrage","color":"white"}]
execute if entity @a[team=white,nbt={SelectedItem:{tag:{white5:1}}}] run execute as @a[team=white,nbt={SelectedItem:{tag:{white5:1}}}] run title @s actionbar [{"text":"6th Sense","color":"white"}]

#Teleport
execute if entity @a[team=white,scores={rightClick=1},nbt={SelectedItem:{tag:{white1:1}}}] run execute as @a[team=white,scores={rightClick=1},nbt={SelectedItem:{tag:{white1:1}}}] run tag @s add teleport
execute if entity @a[tag=teleport] run execute as @a[tag=teleport] run execute at @s run tp @s ^ ^ ^10
execute at @a[tag=teleport] run particle end_rod ~ ~3 ~ 0.01 0.65 0.01 0 30 force
execute at @a[tag=teleport] run playsound entity.illusioner.mirror_move ambient @a
scoreboard players set @a[tag=teleport] rightClick 0
tag @a remove teleport

#Back Track
execute if entity @a[team=white,scores={rightClick=1},nbt={SelectedItem:{tag:{white2:1}}}] run execute as @a[team=white,scores={rightClick=1},nbt={SelectedItem:{tag:{white2:1}}}] run tag @s add backtrack
execute if entity @a[team=white,scores={rightClick=1},nbt={SelectedItem:{tag:{white2:1}}}] run execute as @a[team=white,scores={rightClick=1},nbt={SelectedItem:{tag:{white2:1}}}] run scoreboard players add @s timer 1
execute as @a[tag=backtrack,nbt={SelectedItem:{tag:{white2:1}}}] run scoreboard players set @s rightClick 0
execute as @a[tag=backtrack,scores={timer=1}] run scoreboard players set @a[tag=backtrack,scores={timer=1}] rightClick 0
execute at @a[tag=backtrack,scores={timer=1}] run particle end_rod ~ ~1 ~ 0.01 0.01 0.01 0.15 35 force
execute at @a[tag=backtrack,scores={timer=1}] run playsound entity.illusioner.mirror_move ambient @a
execute at @a[tag=backtrack,scores={timer=1}] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["tp"]}
execute at @e[type=armor_stand,tag=tp] run function particles:teleport
execute at @e[type=armor_stand,tag=tp] run playsound block.beacon.ambient ambient @a
execute as @e[tag=tp] at @s run tp @s ~ ~ ~ ~1 ~
execute at @a[tag=backtrack,scores={timer=239}] run playsound block.note_block.pling ambient @a
execute at @a[tag=backtrack,scores={timer=259}] run playsound block.note_block.pling ambient @a
execute at @a[tag=backtrack,scores={timer=279}] run playsound block.note_block.pling ambient @a
execute at @a[tag=backtrack,scores={timer=298}] run playsound entity.illusioner.mirror_move ambient @a
execute at @a[tag=backtrack,scores={timer=298}] run particle end_rod ~ ~3 ~ 0.01 0.65 0.01 0 30 force
execute if entity @a[tag=backtrack,scores={timer=300..}] run tp @a[tag=backtrack,scores={timer=300..}] @e[type=armor_stand,tag=tp,limit=1,sort=nearest]
execute if entity @a[tag=backtrack,scores={timer=300..}] run execute at @a[tag=backtrack,scores={timer=300..}] run kill @e[type=armor_stand,tag=tp,limit=1,sort=nearest]
execute as @a[tag=backtrack,scores={timer=300..}] run scoreboard players set @s timer 0
execute as @a[tag=backtrack,scores={timer=300..}] run tag @s remove backtrack

#Heaven Slam
execute as @a[team=white,scores={rightClick=1},nbt={SelectedItem:{tag:{white3:1}}}] run tag @s add heavenslam
execute at @a[tag=heavenslam] run execute if entity @e[distance=1..10,sort=nearest,limit=1,type=!armor_stand] run execute as @a[tag=heavenslam] run tp @s @e[distance=1..10,sort=nearest,limit=1,type=!armor_stand]
execute at @a[tag=heavenslam] run execute if entity @e[tag=!heavenslam,distance=..1,sort=nearest,limit=1,type=!armor_stand] run execute as @a[tag=heavenslam] run tp @s ~ ~6 ~ facing ~ ~-90 ~
execute at @a[tag=heavenslam] run execute if entity @e[distance=1..10,sort=nearest,limit=1,type=!armor_stand] run effect give @a[tag=heavenslam] strength 1 0 true
execute at @a[tag=heavenslam] run execute if entity @e[distance=1..10,sort=nearest,limit=1,type=!armor_stand] run particle end_rod ~ ~3 ~ 0.01 0.65 0.01 0 30 force
execute at @a[tag=heavenslam] run execute if entity @e[distance=1..10,sort=nearest,limit=1,type=!armor_stand] run function particles:endring
execute at @a[tag=heavenslam] run execute if entity @e[distance=1..10,sort=nearest,limit=1,type=!armor_stand] run playsound entity.illusioner.mirror_move ambient @a
scoreboard players set @a[tag=heavenslam] rightClick 0
tag @a remove heavenslam

#Super Flying Teleportation Barrage
