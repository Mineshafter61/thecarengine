$scoreboard players set .rule.kill_vehicle_under_y datapack.temp.thecarengine.main $(raw)0000
execute store result storage thescarengine:temp p.rules.kill_vehicle_under_y int 0.0001 run scoreboard players get .rule.kill_vehicle_under_y datapack.temp.thecarengine.main
scoreboard players set .internal.config.temp1.is_success datapack.temp.thecarengine.main 1