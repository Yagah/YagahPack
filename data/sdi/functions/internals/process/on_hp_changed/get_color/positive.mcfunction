#data modify storage sditemp Color set value '{"text":"","color":"green"}'
execute if score #hp_diff sdi.temp matches 1.. if score #absorption_diff sdi.temp matches ..0 run data modify storage sditemp Color set value '{"text":"","color":"green"}'
execute if score #hp_diff sdi.temp matches ..0 if score #absorption_diff sdi.temp matches 1.. run data modify storage sditemp Color set value '{"text":"","color":"aqua"}'
execute if score #hp_diff sdi.temp matches 1.. if score #absorption_diff sdi.temp matches 1.. run data modify storage sditemp Color set value '{"text":"","color":"light_purple"}'