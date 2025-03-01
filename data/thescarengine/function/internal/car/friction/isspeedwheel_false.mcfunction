
scoreboard players set @s datapack.temp.thecarengine.car.isspeedwheel 0
execute as @e[tag=datapack.thescarengine.car.parts.wheel,tag=datapack.thescarengine.car.parts.selected,x=0,type=item_display] on passengers run data merge entity @s {teleport_duration:0}