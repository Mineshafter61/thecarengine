execute unless data storage thescarengine:temp {ON:1} run return run function thescarengine:messages/tce_already_off


execute if score .rule.tce_disable_confirmation datapack.temp.thecarengine.main matches 1 run function thescarengine:messages/tce_disable_confirm
execute if score .rule.tce_disable_confirmation datapack.temp.thecarengine.main matches 0 run function thescarengine:disable