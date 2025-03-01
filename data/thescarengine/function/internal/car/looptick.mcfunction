
execute as @e[tag=datapack.thescarengine.car.parts.driver_seat,type=item_display,scores={datapack.temp.thecarengine.car.loaded=0..}] run function thescarengine:internal/car/tickloadedcar
execute if score .perm_keep_ticking datapack.temp.thecarengine.main matches 1 run schedule function thescarengine:internal/car/looptick 1t