scoreboard players add %current_gid sdi.gid 1
execute if score %current_gid sdi.gid >= %groups sdi.settings run scoreboard players set %current_gid sdi.gid 0
scoreboard players operation @s sdi.gid = %current_gid sdi.gid
scoreboard players operation @s sdi.gid.version = %current_gid_version sdi.gid.version

#DEBUGGING
#tellraw @a [{"selector":"@s","color":"gray","italic":true}," -> ",{"score":{"name":"@s","objective":"sdi.gid"}}," (",{"score":{"name":"@s","objective":"sdi.gid.version"}},")"]