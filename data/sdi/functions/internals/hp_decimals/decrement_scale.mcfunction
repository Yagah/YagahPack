scoreboard players remove %decimals sdi.settings 1
execute if score %decimals sdi.settings matches ..-1 run scoreboard players set %decimals sdi.settings 1
function sdi:internals/hp_decimals/on_ammount_changed