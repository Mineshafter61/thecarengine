#this message shows up when player uses tce:info while tce:on

#tellraw @s "STAT: ENABLE"
#tellraw @s ["MARKER LOCATION: ",{"nbt":"data.MARKER_DIMENSION","storage":"thescarengine:temp"},{"text":" [TP]","hover_event":{"action":"show_text","value":"click to teleport to marker"},"click_event": {"action": "run_command","command": "/tp @s 0cd3bf27-1ebc-4615-b171-1db60b2e9c67"}}]
#tellraw @s ["MOST ID: ",{"score":{"name":".gobal_id","objective":"datapack.temp.thecarengine.main"}}]

#execute store result score .info_pivotcount datapack.temp.thecarengine.main if entity @e[tag=datapack.thescarengine.car.parts.pivot]
#tellraw @s ["LOADED CARS: ",{"score":{"name":".info_pivotcount","objective":"datapack.temp.thecarengine.main"}}]

#execute as @e[tag=datapack.thescarengine.car.parts] on passengers run tag @s add datapack.thescarengine.info.displaycount
#execute store result score .info_pivotcount datapack.temp.thecarengine.main if entity @e[tag=datapack.thescarengine.info.displaycount]
#tellraw @s ["LOADED DISPLAYED: ",{"score":{"name":".info_pivotcount","objective":"datapack.temp.thecarengine.main"}}]


tellraw @s ["",{"text":"----------[","color":"gray"},{"text":" T","color":"#01BABA"},{"text":"C","color":"#54DCDC"},{"text":"E ","color":"#A6FDFD"},{"text":"]----------","color":"gray"},{"text":"\n"}]

tellraw @s [{"text":"  Status:","color":"#A6FDFD"},{"text":" Enabled","color":"green"}]

#most id
tellraw @s [{"text":"  Most ID: ","color":"#A6FDFD"},{"score":{"name":".gobal_id","objective":"datapack.temp.thecarengine.main"},"color":"#54DCDC"}]

#loaded car
execute store result score .info_pivotcount datapack.temp.thecarengine.main if entity @e[tag=datapack.thescarengine.car.parts.pivot]
tellraw @s [{"text":"  Loaded Vehicle(s): ","color":"#A6FDFD"},{"score":{"name":".info_pivotcount","objective":"datapack.temp.thecarengine.main"},"color":"#54DCDC"}]

#loaded display
execute as @e[tag=datapack.thescarengine.car.parts] on passengers run tag @s add datapack.thescarengine.info.displaycount
execute store result score .info_pivotcount datapack.temp.thecarengine.main if entity @e[tag=datapack.thescarengine.info.displaycount]
tellraw @s [{"text":"  Loaded Display: ","color":"#A6FDFD"},{"score":{"name":".info_pivotcount","objective":"datapack.temp.thecarengine.main"},"color":"#54DCDC"}]
tag @e remove datapack.thescarengine.info.displaycount

#ticking cars
execute store result score .info_pivotcount datapack.temp.thecarengine.main if entity @e[tag=datapack.thescarengine.car.parts.driver_seat,type=item_display,scores={datapack.temp.thecarengine.car.loaded=0..}]
tellraw @s [{"text":"  Ticking Vehicle: ","color":"#A6FDFD"},{"score":{"name":".info_pivotcount","objective":"datapack.temp.thecarengine.main"},"color":"#54DCDC"}]








tellraw @s [{"color":"dark_aqua","text":"  [Teleport to Marker]","hover_event":{"action":"show_text","value":[{"text":"/execute in "},{"nbt":"data.MARKER_DIMENSION","storage":"thescarengine:temp"},{"text":"  run tp @s 0 0 0"}]},"click_event": {"action": "run_command","command": "/tp @s 0cd3bf27-1ebc-4615-b171-1db60b2e9c67"}}]

tellraw @s [{"text":"\n"},{"text":"--------------------------","color":"gray"}]
