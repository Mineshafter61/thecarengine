tag @s remove datapack.temp.thecarengine.config.inputing
clear @s *[minecraft:custom_data={thescarengine:"config/input"}]
advancement grant @s only thescarengine:config_input_listen
function thescarengine:messages/config_inpit_cancel

tag @s remove datapack.thescarengine.commands.config.set.kill_near_distance
tag @s remove datapack.thescarengine.commands.config.set.snap_vehicle_rotation_range
tag @s remove datapack.thescarengine.commands.config.set.unload_vehicle_after_ticks