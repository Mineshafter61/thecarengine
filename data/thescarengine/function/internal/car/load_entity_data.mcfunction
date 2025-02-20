#load storage data
data modify storage thescarengine:temp data.current_car set from entity @s item.components.'minecraft:custom_data'.car_data




#gear

# 2 - FORWARD
# 1 - BRAKE FORWARD
# 0 - NATUAL
# -1 - BRAKE BACKWARD
# -2 - BACKWARD

scoreboard players set .current_gear datapack.temp.thecarengine.main 0




execute if score @s datapack.temp.thecarengine.car.gear_timer matches 1.. run scoreboard players remove @s datapack.temp.thecarengine.car.gear_timer 1

#key display format
data modify storage thescarengine:temp data.actionbar set value [{"text":"[","color":"#AAAAAA"},{"text":" W","color":"#555555"},{"text":" A","color":"#555555"},{"text":" S","color":"#555555"},{"text":" D","color":"#555555"},{"text":" ] || V ≈ ","color":"#AAAAAA","extra":[{"color":"#55FF55","score":{"name":".current_kmh","objective":"datapack.temp.thecarengine.main"}},{"text":" KM/H ","color":"#AAAAAA"}]}]


#check driver keypress
execute on passengers if entity @s[type=player] run function thescarengine:internal/process/driver
execute if score @s datapack.temp.thecarengine.car.gear_timer matches 0 if score .keyW datapack.temp.thecarengine.main matches 1 run function thescarengine:internal/car/keypressed/w
execute if score @s datapack.temp.thecarengine.car.gear_timer matches 0 if score .keyS datapack.temp.thecarengine.main matches 1 run function thescarengine:internal/car/keypressed/s


#handle turning
execute if score .keyA datapack.temp.thecarengine.main matches 1 run function thescarengine:internal/car/keypressed/a
execute if score .keyD datapack.temp.thecarengine.main matches 1 run function thescarengine:internal/car/keypressed/d

#handle rotation snap
execute unless score .rule.snap_vehicle_rotation_range datapack.temp.thecarengine.main matches 0 unless score .keyA datapack.temp.thecarengine.main matches 1 unless score .keyD datapack.temp.thecarengine.main matches 1 run function thescarengine:internal/car/snap_rotation/main


#reset wheel turns
execute if score @s datapack.temp.thecarengine.car.wheel_turning matches 1 if score .keyA datapack.temp.thecarengine.main matches 0 if score .keyD datapack.temp.thecarengine.main matches 0 run function thescarengine:internal/car/keypressed/reset_turn_wheel


#friction and wheel rotation
execute unless score @s datapack.temp.thecarengine.car.speed matches 0 run function thescarengine:internal/car/friction/main


#g
scoreboard players set .current_hassupportblock datapack.temp.thecarengine.main 0
execute store result score test datapack.temp.thecarengine.main at @e[tag=datapack.thescarengine.car.parts.selected,tag=datapack.thescarengine.car.parts.collision,x=0,type=item_display] unless block ~ ~-0.06 ~ #thescarengine:no_collision run scoreboard players set .current_hassupportblock datapack.temp.thecarengine.main 1

#GRAVTY CONTORL
execute if score .current_hassupportblock datapack.temp.thecarengine.main matches 0 run scoreboard players remove @s datapack.temp.thecarengine.car.yv 500

execute unless score @s datapack.temp.thecarengine.car.yv matches 0 run function thescarengine:internal/car/gravity/main



#get speed in km/h
scoreboard players operation .current_kmh datapack.temp.thecarengine.main = @s datapack.temp.thecarengine.car.speed
scoreboard players operation .current_kmh datapack.temp.thecarengine.main /= .138 datapack.temp.thecarengine.const

#gear
data modify storage thescarengine:temp data.actionbarGEAR set value "BRAKE"
execute if score @s datapack.temp.thecarengine.car.gear matches 2 run data modify storage thescarengine:temp data.actionbarGEAR set value "FORWARD"
execute if score @s datapack.temp.thecarengine.car.gear matches -2 run data modify storage thescarengine:temp data.actionbarGEAR set value "BACKWARD"
execute if score @s datapack.temp.thecarengine.car.gear_timer matches 1.. run data modify storage thescarengine:temp data.actionbarGEAR set value "NATURAL"


#display action bar
execute on passengers run title @s actionbar [{"nbt":"data.actionbar","storage":"thescarengine:temp","interpret":true},{"color":"green","storage":"thescarengine:temp","nbt":"data.actionbarGEAR"}]



#reset load time
execute unless score @s datapack.temp.thecarengine.car.speed matches 0 run scoreboard players operation @s datapack.temp.thecarengine.car.loaded = .rule.unload_vehicle_after_ticks datapack.temp.thecarengine.main
execute unless score @s datapack.temp.thecarengine.car.yv matches 0 run scoreboard players operation @s datapack.temp.thecarengine.car.loaded = .rule.unload_vehicle_after_ticks datapack.temp.thecarengine.main
execute if predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"passenger": {"type": "minecraft:player"}}} run scoreboard players operation @s datapack.temp.thecarengine.car.loaded = .rule.unload_vehicle_after_ticks datapack.temp.thecarengine.main
scoreboard players remove @s datapack.temp.thecarengine.car.loaded 1
execute if score @s datapack.temp.thecarengine.car.loaded matches -1 run scoreboard players reset @s datapack.temp.thecarengine.car.loaded




execute if data storage thescarengine:temp data.current_car.customfunc run function thescarengine:internal/car/customfunc_macro with storage thescarengine:temp data.current_car




scoreboard players set .keyW datapack.temp.thecarengine.main 0
scoreboard players set .keyA datapack.temp.thecarengine.main 0
scoreboard players set .keyS datapack.temp.thecarengine.main 0
scoreboard players set .keyD datapack.temp.thecarengine.main 0
