scoreboard players remove %groups sdi.settings 1
execute if score %groups sdi.settings matches ..0 run scoreboard players set %groups sdi.settings 1
function sdi:internals/gid/on_ammount_changed