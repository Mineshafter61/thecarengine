


execute if data storage thescarengine:temp {ON:1} run function thescarengine:messages/tce_already_on
execute if data storage thescarengine:temp {ON:1} run return -1
data modify storage thescarengine:temp ON set value 1

function thescarengine:messages/tce_on


kill 0cd3bf27-1ebc-4615-b171-1db60b2e9c67
summon marker 0 0 0 {UUID:[I; 215203623, 515655189, -1317986890, 187604071]}
execute at 0cd3bf27-1ebc-4615-b171-1db60b2e9c67 run data modify storage thescarengine:temp data.MARKER_DIMENSION set from entity @p Dimension




#main

scoreboard objectives remove datapack.temp.thecarengine.main
scoreboard objectives add datapack.temp.thecarengine.main dummy
scoreboard players set .gobal_id datapack.temp.thecarengine.main 0

scoreboard players set .keyW datapack.temp.thecarengine.main 0
scoreboard players set .keyA datapack.temp.thecarengine.main 0
scoreboard players set .keyS datapack.temp.thecarengine.main 0
scoreboard players set .keyD datapack.temp.thecarengine.main 0

scoreboard players set .internal.car_item.place.dont_remove_tag datapack.temp.thecarengine.main 0

#start ticking loop
scoreboard players set .perm_keep_ticking datapack.temp.thecarengine.main 1
schedule function thescarengine:internal/car/looptick 1t

#const
scoreboard objectives remove datapack.temp.thecarengine.const
scoreboard objectives add datapack.temp.thecarengine.const dummy
scoreboard players set .-1 datapack.temp.thecarengine.const -1
scoreboard players set .2 datapack.temp.thecarengine.const 2
scoreboard players set .10 datapack.temp.thecarengine.const 10
scoreboard players set .138 datapack.temp.thecarengine.const 138
scoreboard players set .256 datapack.temp.thecarengine.const 256
scoreboard players set .360 datapack.temp.thecarengine.const 360
scoreboard players set .1000 datapack.temp.thecarengine.const 1000
scoreboard players set .65536 datapack.temp.thecarengine.const 65536
scoreboard players set .3600000 datapack.temp.thecarengine.const 3600000




#per car
scoreboard objectives add datapack.temp.thecarengine.car.speed dummy
scoreboard objectives add datapack.temp.thecarengine.car.dir dummy
scoreboard objectives add datapack.temp.thecarengine.car.wheel_rot dummy
scoreboard objectives add datapack.temp.thecarengine.car.yv dummy
scoreboard objectives add datapack.temp.thecarengine.car.id dummy
scoreboard objectives add datapack.temp.thecarengine.car.gear dummy
scoreboard objectives add datapack.temp.thecarengine.car.gear_timer dummy
scoreboard objectives add datapack.temp.thecarengine.car.wheel_turning dummy
scoreboard objectives add datapack.temp.thecarengine.car.loaded dummy

#per player
scoreboard objectives add datapack.temp.thecarengine.car_item.place.cooldown dummy
scoreboard objectives add datapack.temp.thecarengine.config.inputing dummy

#pear interaction
scoreboard objectives add datapack.temp.thecarengine.item.relocator.interaction dummy


#per entity
scoreboard objectives add datapack.temp.thecarengine.car.parts.pos_y dummy


#keypress checks
scoreboard objectives add datapack.temp.thecarengine.keypress.dir dummy


#ride link
scoreboard objectives add datapack.temp.thecarengine.ride_link dummy



#stuff
execute store success score .perm_chunkalreadyloaded datapack.temp.thecarengine.main run forceload add 0 0

#load config
function thescarengine:commands/config/default
function thescarengine:commands/config/to_score_board