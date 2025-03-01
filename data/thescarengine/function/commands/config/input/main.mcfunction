
clear @s minecraft:writable_book[minecraft:custom_data={thescarengine:"config/input"}]

function thescarengine:messages/config_input_book

tag @s add datapack.temp.thecarengine.config.inputing

#save item
data modify storage thescarengine:temp data.config.input.macro.uuid set from entity @s UUID
data modify storage thescarengine:temp data.config.input.macro.item set from entity @s SelectedItem
function thescarengine:commands/config/input/save_item with storage thescarengine:temp data.config.input.macro
#place item
item replace entity @s weapon.mainhand with minecraft:writable_book[custom_data={thescarengine:"config/input"}]

advancement revoke @s only thescarengine:config_input_listen