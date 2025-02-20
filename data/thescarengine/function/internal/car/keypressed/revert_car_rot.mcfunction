#load old rot

scoreboard players set .current_turn datapack.temp.thecarengine.main 0



scoreboard players operation @s datapack.temp.thecarengine.car.dir = .current_dir_old datapack.temp.thecarengine.main

execute store result entity @n[tag=datapack.thescarengine.car.parts.selected,tag=datapack.thescarengine.car.parts.pivot,type=item_display,x=0] Rotation[0] float 0.0001 run scoreboard players get @s datapack.temp.thecarengine.car.dir

execute as @e[tag=datapack.thescarengine.car.parts.selected,tag=datapack.thescarengine.car.parts.pivot,type=item_display,limit=1,x=0] at @s run function thescarengine:internal/generated_cars/bones/pivot with storage thescarengine:temp data.current_car


#scoreboard players set .current_rotplayer datapack.temp.thecarengine.main 0