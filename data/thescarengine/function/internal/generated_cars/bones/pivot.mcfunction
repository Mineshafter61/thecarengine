#this run by update.mcfuction
data modify storage thescarengine:temp data.temp.rot set from entity @s Rotation[0]
$execute as @e[x=0,tag=datapack.thescarengine.car.parts.selected,type=item_display] run function thescarengine:cars/$(car_display)/bone
#execute on passengers run data modify entity @s Rotation[0] set from storage thescarengine:temp data.temp.rot

