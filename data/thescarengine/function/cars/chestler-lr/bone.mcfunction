#this function ran by pivot

#chestler-lr

#collision


tp @s[tag=datapack.thescarengine.car.parts.collision.0] ^-0.94 ^-0.2 ^1.9 0 0
tp @s[tag=datapack.thescarengine.car.parts.collision.1] ^0.94 ^-0.2 ^1.9 0 0
tp @s[tag=datapack.thescarengine.car.parts.collision.3] ^0.81 ^-0.2 ^-1.480 0 0
tp @s[tag=datapack.thescarengine.car.parts.collision.2] ^-0.81 ^-0.2 ^-1.480 0 0


#car
tp @s[tag=datapack.thescarengine.car.parts.wheel.0] ^-0.94 ^0.160 ^1.9 0 0
tp @s[tag=datapack.thescarengine.car.parts.wheel.1] ^0.94 ^0.160 ^1.9 0 0
tp @s[tag=datapack.thescarengine.car.parts.wheel.2] ^-0.81 ^0.160 ^-1.480 0 0
tp @s[tag=datapack.thescarengine.car.parts.wheel.3] ^0.81 ^0.160 ^-1.480 0 0

#seat
tp @s[tag=datapack.thescarengine.car.parts.driver_seat] ^-0.44 ^0.19 ^0.13

#passenger seat
tp @s[tag=datapack.thescarengine.car.parts.seat.1] ^0.44 ^0.19 ^0.13
tp @s[tag=datapack.thescarengine.car.parts.seat.2] ^-0.0 ^0.19 ^-0.95


#e
execute on passengers run data modify entity @s Rotation[0] set from storage thescarengine:temp data.temp.rot
