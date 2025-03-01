#run by load_entity_data.mcfunction
#as car driver seat
scoreboard players operation .current_dv datapack.temp.thecarengine.main = @s datapack.temp.thecarengine.car.yv

#reset collide bool
scoreboard players set .current_collideY datapack.temp.thecarengine.main 0
execute as @e[tag=datapack.thescarengine.car.parts.selected,type=item_display,x=0] run function thescarengine:internal/car/gravity/move_by_g
execute if score .current_collideY datapack.temp.thecarengine.main matches 1 run function thescarengine:internal/car/gravity/snapup

#kill if below
execute if score .rule.kill_vehicle_under_y datapack.temp.thecarengine.main > @s datapack.temp.thecarengine.car.parts.pos_y run function thescarengine:internal/car/gravity/out_of_world