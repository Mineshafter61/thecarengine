#ran by data\thescarengine\function\internal\car\color\updatecolorloop_macro.mcfunction

#color in storage thescarengine:temp data.color.macro2.part.color


#DYABLE
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type:"minecraft:item_display",slots:{"container.*":{items:"#minecraft:dyeable"}}}} run return run data modify entity @s item.components.'minecraft:dyed_color'.rgb set from storage thescarengine:temp data.color.macro2.part.color

#FIREWORK STAR
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type:"minecraft:item_display",slots:{"container.*":{items:"minecraft:firework_star"}}}} run return run function thescarengine:internal/car/color/firework_star

#POTION, ARROW
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type:"minecraft:item_display",slots:{"container.*":{items:["minecraft:tipped_arrow","minecraft:lingering_potion","minecraft:splash_potion","minecraft:potion"]}}}} run return run data modify entity @s item.components.'minecraft:potion_contents'.custom_color set from storage thescarengine:temp data.color.macro2.part.color
