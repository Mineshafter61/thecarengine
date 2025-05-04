#get data
data modify storage thescarengine:temp data.current_car set from entity @s item.components.'minecraft:custom_data'.car_data


execute store result score @s datapack.temp.thecarengine.car.settings.forward_accel.div run data get storage thescarengine:temp data.current_car.forward_accel.div
execute store result score @s datapack.temp.thecarengine.car.settings.forward_accel.max run data get storage thescarengine:temp data.current_car.forward_accel.max 10000
execute store result score @s datapack.temp.thecarengine.car.settings.forward_brake run data get storage thescarengine:temp data.current_car.forward_brake -10000
execute store result score @s datapack.temp.thecarengine.car.settings.backward_accel.div run data get storage thescarengine:temp data.current_car.backward_accel.div
execute store result score @s datapack.temp.thecarengine.car.settings.backward_accel.max run data get storage thescarengine:temp data.current_car.backward_accel.max 10000
execute store result score @s datapack.temp.thecarengine.car.settings.backward_brake run data get storage thescarengine:temp data.current_car.backward_brake 10000
execute store result score @s datapack.temp.thecarengine.car.settings.friction run data get storage thescarengine:temp data.current_car.friction 10000
execute store result score @s datapack.temp.thecarengine.car.settings.max_vel run data get storage thescarengine:temp data.current_car.max_vel 10000
execute store result score @s datapack.temp.thecarengine.car.settings.min_vel run data get storage thescarengine:temp data.current_car.min_vel 10000
execute store result score @s datapack.temp.thecarengine.car.settings.wheel_rot.div run data get storage thescarengine:temp data.current_car.wheel_rot.div
execute store result score @s datapack.temp.thecarengine.car.settings.wheel_rot.mul run data get storage thescarengine:temp data.current_car.wheel_rot.mul
execute store result score @s datapack.temp.thecarengine.car.settings.wheel_interpolation_range run data get storage thescarengine:temp data.current_car.wheel_interpolation_range 10000
execute store result score @s datapack.temp.thecarengine.car.settings.wheel_turn run data get storage thescarengine:temp data.current_car.wheel_turn 10000
execute store result score @s datapack.temp.thecarengine.car.settings.turn.div run data get storage thescarengine:temp data.current_car.turn.div
execute store result score @s datapack.temp.thecarengine.car.settings.turn.max run data get storage thescarengine:temp data.current_car.turn.max 10000
execute store result score @s datapack.temp.thecarengine.car.settings.turn.mul run data get storage thescarengine:temp data.current_car.turn.mul
execute store result score @s datapack.temp.thecarengine.car.settings.turn.str run data get storage thescarengine:temp data.current_car.turn.str 10000

