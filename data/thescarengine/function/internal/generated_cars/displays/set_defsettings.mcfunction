#setupcar

#$say $(car_summon_name)
data modify storage thescarengine:temp settings set value {}
$function thescarengine:cars/$(car_summon_name)/settings
data modify entity @s item set value {id:"tnt",count:1b}
data modify storage thescarengine:temp settings.placed_item.components.'minecraft:food' set value {saturation: 0.0f, nutrition: 0, can_always_eat: 1b, eat_seconds: 2.1474836E9f}
data modify storage thescarengine:temp settings.placed_item.components.'minecraft:custom_data'.thescarengine set value "car_item"
data modify entity @s item.components.'minecraft:custom_data'.car_data set from storage thescarengine:temp settings