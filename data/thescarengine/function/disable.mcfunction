execute unless data storage thescarengine:temp {ON:1} run function thescarengine:messages/tce_already_off
execute unless data storage thescarengine:temp {ON:1} run return -1


execute if score .perm_chunkalreadyloaded datapack.temp.thecarengine.main matches 1 at 0cd3bf27-1ebc-4615-b171-1db60b2e9c67 run forceload remove 0 0


data modify storage thescarengine:temp ON set value 0

execute as @e[tag=datapack.thescarengine.car.parts] on passengers run kill @s
kill @e[tag=datapack.thescarengine.car.parts]

function thescarengine:messages/tce_off

kill 0cd3bf27-1ebc-4615-b171-1db60b2e9c67

scoreboard objectives remove datapack.temp.thecarengine.main
scoreboard objectives remove datapack.temp.thecarengine.const
scoreboard objectives remove datapack.temp.thecarengine.car.speed
scoreboard objectives remove datapack.temp.thecarengine.car.dir
scoreboard objectives remove datapack.temp.thecarengine.car.wheel_rot
scoreboard objectives remove datapack.temp.thecarengine.car.wheel_pitch
scoreboard objectives remove datapack.temp.thecarengine.car.yv
scoreboard objectives remove datapack.temp.thecarengine.car.id
scoreboard objectives remove datapack.temp.thecarengine.car.gear
scoreboard objectives remove datapack.temp.thecarengine.car.gear_timer
scoreboard objectives remove datapack.temp.thecarengine.car.wheel_turning
scoreboard objectives remove datapack.temp.thecarengine.car.parts.pos_y
scoreboard objectives remove datapack.temp.thecarengine.keypress.dir
scoreboard objectives remove datapack.temp.thecarengine.ride_link
scoreboard objectives remove datapack.temp.thecarengine.car.loaded
scoreboard objectives remove datapack.temp.thecarengine.car_item.place.cooldown

data remove storage thescarengine:temp data
data remove storage thescarengine:temp settings