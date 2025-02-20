

execute unless score @s datapack.temp.thecarengine.config.inputing matches 1 run return 0



data remove storage thescarengine:temp data.config.input.content
execute store success score .internal.config.input.has_writable datapack.temp.thecarengine.main run data modify storage thescarengine:temp data.config.input.content set from entity @s Inventory[{components:{"minecraft:custom_data":{thescarengine:"config/input"}}}].components.'minecraft:writable_book_content'
execute store success score .internal.config.input.has_written datapack.temp.thecarengine.main run data modify storage thescarengine:temp data.config.input.content set from entity @s Inventory[{components:{"minecraft:custom_data":{thescarengine:"config/input"}}}].components.'minecraft:written_book_content'
execute if score .internal.config.input.has_writable datapack.temp.thecarengine.main matches 0 if score .internal.config.input.has_written datapack.temp.thecarengine.main matches 0 run function thescarengine:messages/config_input_book
execute if score .internal.config.input.has_writable datapack.temp.thecarengine.main matches 0 if score .internal.config.input.has_written datapack.temp.thecarengine.main matches 0 run return run advancement revoke @s only thescarengine:config_input_listen


data modify storage thescarengine:temp data.config.input.macro.slot set from entity @s Inventory[{components:{"minecraft:custom_data":{thescarengine:"config/input"}}}].Slot
data modify storage thescarengine:temp data.config.input.macro.uuid set from entity @p[tag=self] UUID
tag @s add self
execute at @s summon item_display run function thescarengine:commands/config/input/give_item with storage thescarengine:temp data.config.input.macro
tag @s remove self

clear @s *[minecraft:custom_data={thescarengine:"config/input"}]

function thescarengine:commands/config/input/setinput