
scoreboard players operation .current_dir datapack.temp.thecarengine.main = @s datapack.temp.thecarengine.car.dir

execute if score .current_dir datapack.temp.thecarengine.main matches 0 run return 0
execute if score .current_dir datapack.temp.thecarengine.main matches 900000 run return 0
execute if score .current_dir datapack.temp.thecarengine.main matches 1800000 run return 0
execute if score .current_dir datapack.temp.thecarengine.main matches 2700000 run return 0



#0
#scoreboard players set .internal.config.snap_vehicle_rotation.min.0 datapack.temp.thecarengine.main 3600000
#scoreboard players set .internal.config.snap_vehicle_rotation.max.0 datapack.temp.thecarengine.main 0
#scoreboard players operation .internal.config.snap_vehicle_rotation.min.0 datapack.temp.thecarengine.main -= .rule.snap_vehicle_rotation_range datapack.temp.thecarengine.main
#scoreboard players operation .internal.config.snap_vehicle_rotation.max.0 datapack.temp.thecarengine.main += .rule.snap_vehicle_rotation_range datapack.temp.thecarengine.main

#90
#scoreboard players set .internal.config.snap_vehicle_rotation.min.90 datapack.temp.thecarengine.main 900000
#scoreboard players set .internal.config.snap_vehicle_rotation.max.90 datapack.temp.thecarengine.main 900000
#scoreboard players operation .internal.config.snap_vehicle_rotation.min.90 datapack.temp.thecarengine.main -= .rule.snap_vehicle_rotation_range datapack.temp.thecarengine.main
#scoreboard players operation .internal.config.snap_vehicle_rotation.max.90 datapack.temp.thecarengine.main += .rule.snap_vehicle_rotation_range datapack.temp.thecarengine.main


#180
#scoreboard players set .internal.config.snap_vehicle_rotation.min.180 datapack.temp.thecarengine.main 1800000
#scoreboard players set .internal.config.snap_vehicle_rotation.max.180 datapack.temp.thecarengine.main 1800000
#scoreboard players operation .internal.config.snap_vehicle_rotation.min.180 datapack.temp.thecarengine.main -= .rule.snap_vehicle_rotation_range datapack.temp.thecarengine.main
#scoreboard players operation .internal.config.snap_vehicle_rotation.max.180 datapack.temp.thecarengine.main += .rule.snap_vehicle_rotation_range datapack.temp.thecarengine.main


#270
#scoreboard players set .internal.config.snap_vehicle_rotation.min.270 datapack.temp.thecarengine.main 2700000
#scoreboard players set .internal.config.snap_vehicle_rotation.max.270 datapack.temp.thecarengine.main 2700000
#scoreboard players operation .internal.config.snap_vehicle_rotation.min.270 datapack.temp.thecarengine.main -= .rule.snap_vehicle_rotation_range datapack.temp.thecarengine.main
#scoreboard players operation .internal.config.snap_vehicle_rotation.max.270 datapack.temp.thecarengine.main += .rule.snap_vehicle_rotation_range datapack.temp.thecarengine.main


scoreboard players set .current_snap_dir datapack.temp.thecarengine.main -1
#0
execute if score .current_dir datapack.temp.thecarengine.main >= .internal.config.snap_vehicle_rotation.min.0 datapack.temp.thecarengine.main run scoreboard players set .current_snap_dir datapack.temp.thecarengine.main 3600000
execute if score .current_dir datapack.temp.thecarengine.main <= .internal.config.snap_vehicle_rotation.max.0 datapack.temp.thecarengine.main run scoreboard players set .current_snap_dir datapack.temp.thecarengine.main 0

#90
execute if score .current_dir datapack.temp.thecarengine.main >= .internal.config.snap_vehicle_rotation.min.90 datapack.temp.thecarengine.main if score .current_dir datapack.temp.thecarengine.main <= .internal.config.snap_vehicle_rotation.max.90 datapack.temp.thecarengine.main run scoreboard players set .current_snap_dir datapack.temp.thecarengine.main 900000

#180
execute if score .current_dir datapack.temp.thecarengine.main >= .internal.config.snap_vehicle_rotation.min.180 datapack.temp.thecarengine.main if score .current_dir datapack.temp.thecarengine.main <= .internal.config.snap_vehicle_rotation.max.180 datapack.temp.thecarengine.main run scoreboard players set .current_snap_dir datapack.temp.thecarengine.main 1800000

#270
execute if score .current_dir datapack.temp.thecarengine.main >= .internal.config.snap_vehicle_rotation.min.270 datapack.temp.thecarengine.main if score .current_dir datapack.temp.thecarengine.main <= .internal.config.snap_vehicle_rotation.max.270 datapack.temp.thecarengine.main run scoreboard players set .current_snap_dir datapack.temp.thecarengine.main 2700000

execute if score .current_snap_dir datapack.temp.thecarengine.main matches -1 run return 0

#get turn angle
scoreboard players operation .current_snap_exactangle datapack.temp.thecarengine.main = .current_snap_dir datapack.temp.thecarengine.main
scoreboard players operation .current_snap_exactangle datapack.temp.thecarengine.main -= .current_dir datapack.temp.thecarengine.main
execute if score .current_snap_exactangle datapack.temp.thecarengine.main matches ..-1 run scoreboard players operation .current_snap_exactangle datapack.temp.thecarengine.main *= .-1 datapack.temp.thecarengine.const
#tellraw @a {"score":{"name": ".current_snap_exactangle","objective": "datapack.temp.thecarengine.main"}}

#get rotate speed
scoreboard players operation .current_turn datapack.temp.thecarengine.main = @s datapack.temp.thecarengine.car.speed
#mul
execute store result score .current_math0 datapack.temp.thecarengine.main run data get storage thescarengine:temp data.current_car.turn.mul
scoreboard players operation .current_turn datapack.temp.thecarengine.main *= .current_math0 datapack.temp.thecarengine.main
#div
execute store result score .current_math0 datapack.temp.thecarengine.main run data get storage thescarengine:temp data.current_car.turn.div
scoreboard players operation .current_turn datapack.temp.thecarengine.main /= .current_math0 datapack.temp.thecarengine.main
#str
execute store result score .current_math0 datapack.temp.thecarengine.main run data get storage thescarengine:temp data.current_car.turn.str 10000
scoreboard players operation .current_turn datapack.temp.thecarengine.main += .current_math0 datapack.temp.thecarengine.main
#max
execute store result score .current_math0 datapack.temp.thecarengine.main run data get storage thescarengine:temp data.current_car.turn.max 10000
execute if score .current_turn datapack.temp.thecarengine.main > .current_math0 datapack.temp.thecarengine.main run scoreboard players operation .current_turn datapack.temp.thecarengine.main = .current_math0 datapack.temp.thecarengine.main
execute if score .current_turn datapack.temp.thecarengine.main matches ..-1 run scoreboard players operation .current_turn datapack.temp.thecarengine.main *= -1 datapack.temp.thecarengine.const

execute if score .current_turn datapack.temp.thecarengine.main matches 0 run return 0

#tellraw @a {"score":{"name": ".current_turn","objective": "datapack.temp.thecarengine.main"}}
execute if score .current_turn datapack.temp.thecarengine.main > .current_snap_exactangle datapack.temp.thecarengine.main run scoreboard players operation @s datapack.temp.thecarengine.car.dir = .current_snap_dir datapack.temp.thecarengine.main


execute if score @s datapack.temp.thecarengine.car.dir > .current_snap_dir datapack.temp.thecarengine.main run scoreboard players operation @s datapack.temp.thecarengine.car.dir -= .current_turn datapack.temp.thecarengine.main
execute if score @s datapack.temp.thecarengine.car.dir < .current_snap_dir datapack.temp.thecarengine.main run scoreboard players operation @s datapack.temp.thecarengine.car.dir += .current_turn datapack.temp.thecarengine.main


#scoreboard players operation @s datapack.temp.thecarengine.car.dir = .current_snap_dir datapack.temp.thecarengine.main





execute store result entity @n[tag=datapack.thescarengine.car.parts.selected,tag=datapack.thescarengine.car.parts.pivot,type=item_display,x=0] Rotation[0] float 0.0001 run scoreboard players get @s datapack.temp.thecarengine.car.dir

#move car to new pos
execute as @e[tag=datapack.thescarengine.car.parts.selected,tag=datapack.thescarengine.car.parts.pivot,type=item_display,limit=1,x=0] at @s run function thescarengine:internal/generated_cars/bones/pivot with storage thescarengine:temp data.current_car

#collision check
scoreboard players set .current_stepupallow datapack.temp.thecarengine.main 1
execute at @e[tag=datapack.thescarengine.car.parts.selected,tag=datapack.thescarengine.car.parts.collision,tag=datapack.thescarengine.car.parts.selected,type=item_display,x=0] unless block ~ ~1 ~ #thescarengine:no_collision run scoreboard players set .current_stepupallow datapack.temp.thecarengine.main 0
scoreboard players set .current_stepup datapack.temp.thecarengine.main 1
execute at @e[tag=datapack.thescarengine.car.parts.selected,tag=datapack.thescarengine.car.parts.collision,tag=datapack.thescarengine.car.parts.selected,type=item_display,x=0] unless block ~ ~ ~ #thescarengine:no_collision run scoreboard players set .current_stepup datapack.temp.thecarengine.main 0
#will rot player bool

execute if score .current_stepupallow datapack.temp.thecarengine.main matches 0 if score .current_stepup datapack.temp.thecarengine.main matches 0 run function thescarengine:internal/car/keypressed/revert_car_rot


