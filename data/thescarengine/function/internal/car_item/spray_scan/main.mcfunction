#ran by data\thescarengine\function\internal\car_item\spray_scan\triggered.mcfunction

#
tellraw @a[tag=thescarengine.debugger] "\u00a77thecarengine > item > spray_can > triggered"

#store item's data
data modify storage thescarengine:temp data.internal.spray_item.used_data set from entity @s SelectedItem

#play particle effect
function thescarengine:internal/car_item/spray_scan/particle




#as interaction
execute store result storage thescarengine:temp data.item.spray_can.gametime long 1 run time query gametime
data modify storage thescarengine:temp data.item.spray_can.playeruuid set from entity @s UUID

function thescarengine:internal/car_item/spray_scan/asinteract_macro with storage thescarengine:temp data.item.spray_can

#execute as @e[tag=datapack.thescarengine.car.parts.dye_interaction] if data entity @s interaction run function thescarengine:internal/car_item/spray_scan/asinteraction

#reduce dura
item modify entity @s[gamemode=!creative] weapon.mainhand { "function": "minecraft:set_damage", "damage": -0.3, "add": true }
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{slots:{weapon.mainhand:{predicates:{"minecraft:damage":{damage:5}}}}}} run function thescarengine:internal/car_item/spray_scan/itembroken