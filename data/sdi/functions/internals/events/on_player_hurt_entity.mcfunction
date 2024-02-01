advancement revoke @s only sdi:on_player_hurt_entity

#update the nearby entities instantly
execute as @e[type=!#sdi:ignore,type=!player,tag=!sdi.ignore,sort=nearest,distance=..7,limit=15] run function sdi:internals/process