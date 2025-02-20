#ran by data\thescarengine\function\internal\car_item\spray_scan\main.mcfunction

item replace entity @s weapon.mainhand with air
playsound minecraft:entity.item.break player @a ~ ~ ~
execute at @s rotated as @s run particle minecraft:item{item:{id:"minecraft:leather_horse_armor",components:{"minecraft:custom_model_data":50000}}} ^ ^1.0 ^0.2 0 0.2 0 0.1 10