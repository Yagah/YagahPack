#title
tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",{"text":"=","color":"red"},{"text":"=","color":"gold"},{"text":"=","color":"red"},{"text":"=","color":"gold"},{"text":"[","color":"red"},{"text":" Simple Damage Indicator Settings ","color":"yellow"},{"text":"]","color":"red"},{"text":"=","color":"gold"},{"text":"=","color":"red"},{"text":"=","color":"gold"},{"text":"=","color":"red"},{"text":"\nHover the cursor over the settings names for more details\n","color":"gray","italic":true}]

execute if score %1_19_or_less_compatibility_mode sdi.settings matches 1 run tellraw @s ["",{"text":"⚠","color":"red"},{"text":" You are running the datapack with compatibility mode with versions 1.19 and earlier. This datapack ","color":"gold"},{"text":"may","italic":true,"color":"gold"},{"text":" lose support for versions below 1.20 soon.","color":"gold"}]

tellraw @s ["",{"text":"\n---- Visual Options ----"}]

#DECIMAL PLACES
execute if score %decimals sdi.settings matches 1.. if score %decimals sdi.settings < #MAX_HEALTH_SCALE sdi.const run tellraw @s ["",{"text":"◀","hoverEvent":{"action":"show_text","value":{"text":"Click to decrease","color":"gold"}},"clickEvent":{"action":"run_command","value":"/function sdi:internals/hp_decimals/decrement_scale"},"color":"white"}," ",{"score":{"name":"%decimals","objective":"sdi.settings"}}," ",{"text":"▶","hoverEvent":{"action":"show_text","value":{"text":"Click to increase","color":"gold"}},"clickEvent":{"action":"run_command","value":"/function sdi:internals/hp_decimals/increment_scale"},"color":"white"},{"text":" Decimals Places","color":"gold","hoverEvent":{"action":"show_text","value":["",{"text":"Decimals Places","color":"gold","bold":true},{"text":"\nDefault Value: 1","color":"gray"},"\n\nThe number of decimal places to display in the indicator."]}}]
execute if score %decimals sdi.settings matches ..0 run tellraw @s ["",{"text":"◀","hoverEvent":{"action":"show_text","value":{"text":"Minimum value","color":"gray","italic":true}},"color":"gray"}," ",{"score":{"name":"%decimals","objective":"sdi.settings"}}," ",{"text":"▶","hoverEvent":{"action":"show_text","value":{"text":"Click to increase","color":"gold"}},"clickEvent":{"action":"run_command","value":"/function sdi:internals/hp_decimals/increment_scale"},"color":"white"},{"text":" Decimals Places","color":"gold","hoverEvent":{"action":"show_text","value":["",{"text":"Decimals Places","color":"gold","bold":true},{"text":"\nDefault Value: 1","color":"gray"},"\n\nThe number of decimal places to display in the indicator."]}}]
execute if score %decimals sdi.settings >= #MAX_HEALTH_SCALE sdi.const run tellraw @s ["",{"text":"◀","hoverEvent":{"action":"show_text","value":{"text":"Click to decrease","color":"gold"}},"clickEvent":{"action":"run_command","value":"/function sdi:internals/hp_decimals/decrement_scale"},"color":"white"}," ",{"score":{"name":"%decimals","objective":"sdi.settings"}}," ",{"text":"▶","hoverEvent":{"action":"show_text","value":{"text":"Maximum value","color":"gray","italic":true}},"color":"gray"},{"text":" Decimals Places","color":"gold","hoverEvent":{"action":"show_text","value":["",{"text":"Decimals Places","color":"gold","bold":true},{"text":"\nDefault Value: 1","color":"gray"},"\n\nThe number of decimal places to display in the indicator."]}}]


#PHISICS
execute if score %gravity sdi.settings matches 1.. run tellraw @s ["",{"text":"[✔]","color":"green","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Click to disable","color":"red"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set %gravity sdi.settings 0"}},{"text":" Motion","color":"aqua","hoverEvent":{"action":"show_text","value":["",{"text":"Motion","bold":true,"color":"aqua"},"\n\nMakes the indicator move.\nIf disabled, it will be static"]}}]
execute if score %gravity sdi.settings matches ..0 run tellraw @s ["",{"text":"[❌]","color":"red","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Click to enable","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set %gravity sdi.settings 1"}},{"text":" Motion","color":"aqua","hoverEvent":{"action":"show_text","value":["",{"text":"Motion","bold":true,"color":"aqua"},"\n\nMakes the indicator move.\nIf disabled, it will be static"]}}]

#MORE COLORS
execute if score %morecolors sdi.settings matches 1.. run tellraw @s ["",{"text":"[✔]","color":"green","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Click to disable","color":"red"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set %morecolors sdi.settings 0"}},{"text":" More Colors","color":"light_purple","hoverEvent":{"action":"show_text","value":["",{"text":"More Colors","bold":true,"color":"aqua"},"\n\nIt shows more colors on the indicator depending on the life/absorption that is changed.\nIf disabled, only shows green for healing and red for damage.\n\nColors Info:",{"text":"\nHealth Lost","color":"red"},{"text":"\nAbsorption Lost","color":"yellow"},{"text":"\nHealth and Absorption Lost","color":"gold"},{"text":"\nHealth Gain","color":"green"},{"text":"\nAbsorption Gain","color":"aqua"},{"text":"\nHealth and Absorption Gain","color":"light_purple"}]}}]
execute if score %morecolors sdi.settings matches ..0 run tellraw @s ["",{"text":"[❌]","color":"red","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Click to enable","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set %morecolors sdi.settings 1"}},{"text":" More Colors","color":"light_purple","hoverEvent":{"action":"show_text","value":["",{"text":"More Colors","bold":true,"color":"light_purple"},"\n\nIt shows more colors on the indicator depending on the life/absorption that is changed.\nIf disabled, only shows green for healing and red for damage.\n\nColors Info:",{"text":"\nHealth Lost","color":"red"},{"text":"\nAbsorption Lost","color":"yellow"},{"text":"\nHealth and Absorption Lost","color":"gold"},{"text":"\nHealth Gain","color":"green"},{"text":"\nAbsorption Gain","color":"aqua"},{"text":"\nHealth and Absorption Gain","color":"light_purple"}]}}]

#SYMBOLS
execute if score %symbols sdi.settings matches 1.. run tellraw @s ["",{"text":"[✔]","color":"green","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Click to disable","color":"red"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set %symbols sdi.settings 0"}},{"text":" Symbols","color":"blue","hoverEvent":{"action":"show_text","value":["",{"text":"Symbols","bold":true,"color":"blue"},"\n\nMakes the indicator have the + or - sign as a prefix. If disabled, it will only show the value and the color"]}}]
execute if score %symbols sdi.settings matches ..0 run tellraw @s ["",{"text":"[❌]","color":"red","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Click to enable","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set %symbols sdi.settings 1"}},{"text":" Symbols","color":"blue","hoverEvent":{"action":"show_text","value":["",{"text":"Symbols","bold":true,"color":"blue"},"\n\nMakes the indicator have the + or - sign as a prefix.\nIf disabled, it will only show the value and the color"]}}]

#PAD ZERO
execute if score %padzero sdi.settings matches ..0 run tellraw @s ["",{"text":"[✔]","color":"green","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Click to disable","color":"red"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set %padzero sdi.settings 1"}},{"text":" Hide Decimal 0","color":"yellow","hoverEvent":{"action":"show_text","value":["",{"text":"Hide Decimal 0","bold":true,"color":"yellow"},"\n\nHides the decimal display if there is no decimal.\nIf disabled, the indicator will display .0 at the end whenever the decimal is 0."]}}]
execute if score %padzero sdi.settings matches 1.. run tellraw @s ["",{"text":"[❌]","color":"red","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Click to enable","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set %padzero sdi.settings 0"}},{"text":" Hide Decimal 0","color":"yellow","hoverEvent":{"action":"show_text","value":["",{"text":"Hide Decimal 0","bold":true,"color":"yellow"},"\n\nHides the decimal display if there is no decimal.\nIf disabled, the indicator will display .0 at the end whenever the decimal is 0."]}}]

tellraw @s {"text":"\n--- Advanced Options ---"}

#GROUPS
execute if score %groups sdi.settings matches 2.. if score %groups sdi.settings < #MAX_GROUPS_SIZE sdi.const run tellraw @s ["",{"text":"◀","hoverEvent":{"action":"show_text","value":{"text":"Click to decrease","color":"gold"}},"clickEvent":{"action":"run_command","value":"/function sdi:internals/gid/decrement_capacity"},"color":"white"}," ",{"score":{"name":"%groups","objective":"sdi.settings"}}," ",{"text":"▶","hoverEvent":{"action":"show_text","value":{"text":"Click to increase","color":"gold"}},"clickEvent":{"action":"run_command","value":"/function sdi:internals/gid/increment_capacity"},"color":"white"},{"text":" Entity Groups Size","color":"dark_red","hoverEvent":{"action":"show_text","value":["",{"text":"Entity Groups Size","color":"dark_red","bold":true},{"text":"\nDefault Value: 3","color":"gray"},"\n\nDefines the total size of the group of entities.\nThe smaller the group, the less latency it will take for the entities to show the indicator, but it can affect the performance.\n\n",{"text":"NOTE:","color":"yellow"}," Players when hit and entities nearby to a player who hit an entity are updated regardless of their group.\n",{"text":"NOTE 2:","color":"yellow"}," Values above 3 don't make much difference.\n\n",{"text":"Try increase the value if you are experiencing performance problems.","color":"green"}]}}]
execute if score %groups sdi.settings matches ..1 run tellraw @s ["",{"text":"◀","hoverEvent":{"action":"show_text","value":{"text":"Minimum value","color":"gray","italic":true}},"color":"gray"}," ",{"score":{"name":"%groups","objective":"sdi.settings"}}," ",{"text":"▶","hoverEvent":{"action":"show_text","value":{"text":"Click to increase","color":"gold"}},"clickEvent":{"action":"run_command","value":"/function sdi:internals/gid/increment_capacity"},"color":"white"},{"text":" Entity Groups Size","color":"dark_red","hoverEvent":{"action":"show_text","value":["",{"text":"Entity Groups Size","color":"dark_red","bold":true},{"text":"\nDefault Value: 3","color":"gray"},"\n\nDefines the total size of the group of entities.\nThe smaller the group, the less latency it will take for the entities to show the indicator, but it can affect the performance.\n\n",{"text":"NOTE:","color":"yellow"}," Players when hit and entities nearby to a player who hit an entity are updated regardless of their group.\n",{"text":"NOTE 2:","color":"yellow"}," Values above 3 don't make much difference.\n\n",{"text":"Try increase the value if you are experiencing performance problems.","color":"green"}]}}]
execute if score %groups sdi.settings >= #MAX_GROUPS_SIZE sdi.const run tellraw @s ["",{"text":"◀","hoverEvent":{"action":"show_text","value":{"text":"Click to decrease","color":"gold"}},"clickEvent":{"action":"run_command","value":"/function sdi:internals/gid/decrement_capacity"},"color":"white"}," ",{"score":{"name":"%groups","objective":"sdi.settings"}}," ",{"text":"▶","hoverEvent":{"action":"show_text","value":{"text":"Maximum value","color":"gray","italic":true}},"color":"gray"},{"text":" Entity Groups Size","color":"dark_red","hoverEvent":{"action":"show_text","value":["",{"text":"Entity Groups Size","color":"dark_red","bold":true},{"text":"\nDefault Value: 3","color":"gray"},"\n\nDefines the total size of the group of entities.\nThe smaller the group, the less latency it will take for the entities to show the indicator, but it can affect the performance.\n\n",{"text":"NOTE:","color":"yellow"}," Players when hit and entities nearby to a player who hit an entity are updated regardless of their group.\n",{"text":"NOTE 2:","color":"yellow"}," Values above 3 don't make much difference.\n\n",{"text":"Try increase the value if you are experiencing performance problems.","color":"green"}]}}]




#exit button
tellraw @s ["\n",{"text":"[ EXIT ]","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function sdi:internals/settings/exit"},"hoverEvent":{"action":"show_text","value":{"text":"Closes the chat menu","color":"red"}}}]