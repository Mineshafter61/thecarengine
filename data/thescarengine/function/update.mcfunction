#1.2.0 to 1.2.1

#change loges
# fixed misisipslellded in tce: book
# fixed scoreboard leak (some scoreboard dont get remove after turn off.)



scoreboard objectives add datapack.temp.thecarengine.car.last_dir dummy
execute as @e[tag=datapack.thescarengine.car.parts.driver_seat,type=item_display,scores={datapack.temp.thecarengine.car.loaded=0..}] run scoreboard players operation @s datapack.temp.thecarengine.car.last_dir = @s datapack.temp.thecarengine.car.dir


#car settings
scoreboard objectives add datapack.temp.thecarengine.car.settings.forward_accel.div dummy
scoreboard objectives add datapack.temp.thecarengine.car.settings.forward_accel.max dummy
scoreboard objectives add datapack.temp.thecarengine.car.settings.forward_brake dummy
scoreboard objectives add datapack.temp.thecarengine.car.settings.backward_accel.div dummy
scoreboard objectives add datapack.temp.thecarengine.car.settings.backward_accel.max dummy
scoreboard objectives add datapack.temp.thecarengine.car.settings.backward_brake dummy
scoreboard objectives add datapack.temp.thecarengine.car.settings.friction dummy
scoreboard objectives add datapack.temp.thecarengine.car.settings.max_vel dummy
scoreboard objectives add datapack.temp.thecarengine.car.settings.min_vel dummy
scoreboard objectives add datapack.temp.thecarengine.car.settings.wheel_rot.div dummy
scoreboard objectives add datapack.temp.thecarengine.car.settings.wheel_rot.mul dummy
scoreboard objectives add datapack.temp.thecarengine.car.settings.wheel_interpolation_range dummy
scoreboard objectives add datapack.temp.thecarengine.car.settings.wheel_turn dummy
scoreboard objectives add datapack.temp.thecarengine.car.settings.turn.str dummy
scoreboard objectives add datapack.temp.thecarengine.car.settings.turn.div dummy
scoreboard objectives add datapack.temp.thecarengine.car.settings.turn.mul dummy
scoreboard objectives add datapack.temp.thecarengine.car.settings.turn.max dummy