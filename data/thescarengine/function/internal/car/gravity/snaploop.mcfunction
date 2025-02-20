scoreboard players operation .current_dv datapack.temp.thecarengine.main /= .2 datapack.temp.thecarengine.const

#collision check
scoreboard players set .current_collideY datapack.temp.thecarengine.main 0
execute as @e[tag=datapack.thescarengine.car.parts.collision,x=0,type=item_display,tag=datapack.thescarengine.car.parts.selected] at @s unless block ~ ~-0.06 ~ #thescarengine:no_collision run scoreboard players set .current_collideY datapack.temp.thecarengine.main 1
execute if score .current_collideY datapack.temp.thecarengine.main matches 0 run scoreboard players operation @e[x=0,type=item_display,tag=datapack.thescarengine.car.parts.selected] datapack.temp.thecarengine.car.parts.pos_y += .current_dv datapack.temp.thecarengine.main
execute if score .current_collideY datapack.temp.thecarengine.main matches 1 run scoreboard players operation @e[x=0,type=item_display,tag=datapack.thescarengine.car.parts.selected] datapack.temp.thecarengine.car.parts.pos_y -= .current_dv datapack.temp.thecarengine.main
execute as @e[x=0,type=item_display,tag=datapack.thescarengine.car.parts.selected] store result entity @s Pos[1] double 0.0001 run scoreboard players get @s datapack.temp.thecarengine.car.parts.pos_y

execute if score .current_dv datapack.temp.thecarengine.main matches ..-200 run function thescarengine:internal/car/gravity/snaploop