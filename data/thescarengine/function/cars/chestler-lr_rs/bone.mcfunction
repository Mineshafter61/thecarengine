#this function ran by pivot

#chestler-lr

#collision


tp @s[tag=datapack.thescarengine.car.parts.collision.0] ^0.94 ^-0.2 ^2.965 0 0
tp @s[tag=datapack.thescarengine.car.parts.collision.1] ^-0.94 ^-0.2 ^2.965 0 0
tp @s[tag=datapack.thescarengine.car.parts.collision.3] ^0.91 ^-0.2 ^-0.4 0 0
tp @s[tag=datapack.thescarengine.car.parts.collision.2] ^-0.91 ^-0.2 ^-0.4 0 0


#car
tp @s[tag=datapack.thescarengine.car.parts.wheel.0] ^0.94 ^0.125 ^2.965 0 0
tp @s[tag=datapack.thescarengine.car.parts.wheel.1] ^-0.94 ^0.125 ^2.965 0 0
tp @s[tag=datapack.thescarengine.car.parts.wheel.2] ^0.91 ^0.125 ^-0.4 0 0
tp @s[tag=datapack.thescarengine.car.parts.wheel.3] ^-0.91 ^0.125 ^-0.4 0 0

#seat
tp @s[tag=datapack.thescarengine.car.parts.driver_seat] ^-0.52 ^0.19 ^1.41

#passenger seat
tp @s[tag=datapack.thescarengine.car.parts.seat.1] ^0.52 ^0.19 ^1.41
tp @s[tag=datapack.thescarengine.car.parts.seat.2] ^-0.52 ^0.19 ^0.38
tp @s[tag=datapack.thescarengine.car.parts.seat.3] ^0.52 ^0.19 ^0.38

#color body
tp @s[tag=datapack.thescarengine.car.parts.dye_part.0] ^ ^ ^3.2

execute on passengers run data modify entity @s Rotation[0] set from storage thescarengine:temp data.temp.rot
