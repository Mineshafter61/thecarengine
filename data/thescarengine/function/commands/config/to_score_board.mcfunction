execute store result score .rule.drop_car_item_to_inventory datapack.temp.thecarengine.main run data get storage thescarengine:temp p.rules.drop_car_item_to_inventory
execute store result score .rule.allow_relocator_while_riding datapack.temp.thecarengine.main run data get storage thescarengine:temp p.rules.allow_relocator_while_riding
execute store result score .rule.tce_disable_confirmation datapack.temp.thecarengine.main run data get storage thescarengine:temp p.rules.tce_disable_confirmation
execute store result score .rule.use_dynamic_collision_check datapack.temp.thecarengine.main run data get storage thescarengine:temp p.rules.use_dynamic_collision_check
execute store result score .rule.player_rotate_with_vehicle datapack.temp.thecarengine.main run data get storage thescarengine:temp p.rules.player_rotate_with_vehicle
execute store result score .rule.collision_collide_collision datapack.temp.thecarengine.main run data get storage thescarengine:temp p.rules.collision_collide_collision
execute store result score .rule.unload_vehicle_after_ticks datapack.temp.thecarengine.main run data get storage thescarengine:temp p.rules.unload_vehicle_after_ticks

#thing
execute store result score .rule.snap_vehicle_rotation_range datapack.temp.thecarengine.main run data get storage thescarengine:temp p.rules.snap_vehicle_rotation_range 10000

#0
scoreboard players set .internal.config.snap_vehicle_rotation.min.0 datapack.temp.thecarengine.main 3600000
scoreboard players set .internal.config.snap_vehicle_rotation.max.0 datapack.temp.thecarengine.main 0
scoreboard players operation .internal.config.snap_vehicle_rotation.min.0 datapack.temp.thecarengine.main -= .rule.snap_vehicle_rotation_range datapack.temp.thecarengine.main
scoreboard players operation .internal.config.snap_vehicle_rotation.max.0 datapack.temp.thecarengine.main += .rule.snap_vehicle_rotation_range datapack.temp.thecarengine.main

#90
scoreboard players set .internal.config.snap_vehicle_rotation.min.90 datapack.temp.thecarengine.main 900000
scoreboard players set .internal.config.snap_vehicle_rotation.max.90 datapack.temp.thecarengine.main 900000
scoreboard players operation .internal.config.snap_vehicle_rotation.min.90 datapack.temp.thecarengine.main -= .rule.snap_vehicle_rotation_range datapack.temp.thecarengine.main
scoreboard players operation .internal.config.snap_vehicle_rotation.max.90 datapack.temp.thecarengine.main += .rule.snap_vehicle_rotation_range datapack.temp.thecarengine.main


#180
scoreboard players set .internal.config.snap_vehicle_rotation.min.180 datapack.temp.thecarengine.main 1800000
scoreboard players set .internal.config.snap_vehicle_rotation.max.180 datapack.temp.thecarengine.main 1800000
scoreboard players operation .internal.config.snap_vehicle_rotation.min.180 datapack.temp.thecarengine.main -= .rule.snap_vehicle_rotation_range datapack.temp.thecarengine.main
scoreboard players operation .internal.config.snap_vehicle_rotation.max.180 datapack.temp.thecarengine.main += .rule.snap_vehicle_rotation_range datapack.temp.thecarengine.main


#270
scoreboard players set .internal.config.snap_vehicle_rotation.min.270 datapack.temp.thecarengine.main 2700000
scoreboard players set .internal.config.snap_vehicle_rotation.max.270 datapack.temp.thecarengine.main 2700000
scoreboard players operation .internal.config.snap_vehicle_rotation.min.270 datapack.temp.thecarengine.main -= .rule.snap_vehicle_rotation_range datapack.temp.thecarengine.main
scoreboard players operation .internal.config.snap_vehicle_rotation.max.270 datapack.temp.thecarengine.main += .rule.snap_vehicle_rotation_range datapack.temp.thecarengine.main



execute store result score .rule.kill_vehicle_under_y datapack.temp.thecarengine.main run data get storage thescarengine:temp p.rules.kill_vehicle_under_y 10000
