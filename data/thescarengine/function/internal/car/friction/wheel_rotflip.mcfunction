#execute if score .current_flipwheel datapack.temp.thecarengine.main matches 1 on passengers run data merge entity @s {teleport_duration:0s}
execute if score .current_flipwheel datapack.temp.thecarengine.main matches 1 on passengers run function thescarengine:internal/car/friction/flipdisplay
#execute if score .current_flipwheel datapack.temp.thecarengine.main matches 1 unless score .keyA datapack.temp.thecarengine.main matches 1 unless score .keyD datapack.temp.thecarengine.main matches 1 run return run function thescarengine:internal/car/friction/durationlessteleport
execute on passengers run data modify entity @s Rotation[1] set from storage thescarengine:temp data.wheel_rot

#execute if score .current_flipwheel datapack.temp.thecarengine.main matches 1 run tag @s add datapack.thescarengine.car.wheel.subticking