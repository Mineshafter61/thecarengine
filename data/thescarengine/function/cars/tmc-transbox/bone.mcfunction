#this function ran by pivot

#collision
tp @s[tag=datapack.thescarengine.car.parts.collision.0] ^0.95 ^-0.13 ^3.22 0 0
tp @s[tag=datapack.thescarengine.car.parts.collision.1] ^-0.95 ^-0.13 ^3.22 0 0
tp @s[tag=datapack.thescarengine.car.parts.collision.3] ^0.95 ^-0.13 ^-0.5 0 0
tp @s[tag=datapack.thescarengine.car.parts.collision.2] ^-0.95 ^-0.13 ^-0.5 0 0


#car
tp @s[tag=datapack.thescarengine.car.parts.wheel.0] ^0.95 ^0.23 ^3.22 0 0
tp @s[tag=datapack.thescarengine.car.parts.wheel.1] ^-0.95 ^0.23 ^3.22 0 0
tp @s[tag=datapack.thescarengine.car.parts.wheel.2] ^0.95 ^0.23 ^-0.5 0 0
tp @s[tag=datapack.thescarengine.car.parts.wheel.3] ^-0.95 ^0.23 ^-0.5 0 0

#seat
tp @s[tag=datapack.thescarengine.car.parts.driver_seat] ^-0.52 ^0.38 ^1.90

#passenger seat
tp @s[tag=datapack.thescarengine.car.parts.seat.1] ^0.52 ^0.38 ^1.90
tp @s[tag=datapack.thescarengine.car.parts.seat.2] ^-0.50 ^0.44 ^0.75
tp @s[tag=datapack.thescarengine.car.parts.seat.3] ^0.50 ^0.44 ^0.75
tp @s[tag=datapack.thescarengine.car.parts.seat.4] ^ ^0.44 ^-0.2
tp @s[tag=datapack.thescarengine.car.parts.seat.5] ^ ^0.44 ^-1.15

#color body
tp @s[tag=datapack.thescarengine.car.parts.dye_part.0] ^ ^0.2 ^3.4

#e
execute on passengers run data modify entity @s Rotation[0] set from storage thescarengine:temp data.temp.rot
