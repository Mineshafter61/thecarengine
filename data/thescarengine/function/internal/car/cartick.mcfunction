#get car group, add tag datapack.thescarengine.car.parts.selected to it.

function thescarengine:internal/car/add_tag_selected with storage thescarengine:temp data.temp.macroinput

#load car data to storage.
#handle keypresses
#friction
#wheel rot
#collision
execute as @n[tag=datapack.thescarengine.car.parts.selected,tag=datapack.thescarengine.car.parts.driver_seat,x=0,type=item_display] run function thescarengine:internal/car/load_entity_data
tag @e remove datapack.thescarengine.car.parts.selected
