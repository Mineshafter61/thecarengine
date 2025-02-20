#run by data\thescarengine\function\internal\car\color\updatecolorloop.mcfunction
#$say $(part)
#$say $(color)
$execute as @e[tag=datapack.thescarengine.car.color.update.selected,tag=$(part),type=item_display,x=0] on passengers if entity @s[type=item_display] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type:"minecraft:item_display",slots:{"container.*":{items:["minecraft:tipped_arrow","minecraft:lingering_potion","minecraft:splash_potion","minecraft:potion","minecraft:leather_boots","minecraft:leather_chestplate","minecraft:leather_helmet","minecraft:leather_horse_armor","minecraft:leather_leggings","minecraft:wolf_armor","minecraft:firework_star"]}}}} run function thescarengine:internal/car/color/passengers

