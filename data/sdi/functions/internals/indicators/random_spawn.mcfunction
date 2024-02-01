###################
# IN:
#   [STORAGE] sditemp CustomName = o nome a dar ao armor stand
########################

execute store result score #random sdi.temp store success score #bit_0 sdi.temp if predicate sdi:random_bit
execute store success score #bit_1 sdi.temp if predicate sdi:random_bit
scoreboard players operation #bit_1 sdi.temp *= #2 sdi.const
execute store success score #bit_2 sdi.temp if predicate sdi:random_bit
scoreboard players operation #bit_2 sdi.temp *= #4 sdi.const

scoreboard players operation #random sdi.temp += #bit_1 sdi.temp
scoreboard players operation #random sdi.temp += #bit_2 sdi.temp


execute if score #random sdi.temp matches ..0 positioned ^.03 ^ ^ run function sdi:internals/indicators/spawn
execute if score #random sdi.temp matches 1 positioned ^-.03 ^ ^ run function sdi:internals/indicators/spawn

execute if score #random sdi.temp matches 2 positioned ^.06 ^ ^ run function sdi:internals/indicators/spawn
execute if score #random sdi.temp matches 3 positioned ^-.06 ^ ^ run function sdi:internals/indicators/spawn

execute if score #random sdi.temp matches 4 positioned ^.09 ^ ^ run function sdi:internals/indicators/spawn
execute if score #random sdi.temp matches 5 positioned ^-.09 ^ ^ run function sdi:internals/indicators/spawn

execute if score #random sdi.temp matches 6 positioned ^.12 ^ ^ run function sdi:internals/indicators/spawn
execute if score #random sdi.temp matches 7 positioned ^-.12 ^ ^ run function sdi:internals/indicators/spawn

scoreboard players reset #random sdi.temp
scoreboard players reset #bit_0 sdi.temp
scoreboard players reset #bit_1 sdi.temp
