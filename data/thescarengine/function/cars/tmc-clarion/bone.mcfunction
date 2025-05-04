#this function ran by pivot


#sedan


#collision
tp @s[tag=datapack.thescarengine.car.parts.collision.0] ^0.95 ^-0.17 ^2.69 0 0
tp @s[tag=datapack.thescarengine.car.parts.collision.1] ^-0.95 ^-0.17 ^2.69 0 0
tp @s[tag=datapack.thescarengine.car.parts.collision.3] ^0.95 ^-0.17 ^-0.44 0 0
tp @s[tag=datapack.thescarengine.car.parts.collision.2] ^-0.95 ^-0.17 ^-0.44 0 0


#car
tp @s[tag=datapack.thescarengine.car.parts.wheel.0] ^0.95 ^0.15 ^2.69 0 0
tp @s[tag=datapack.thescarengine.car.parts.wheel.1] ^-0.95 ^0.15 ^2.69 0 0
tp @s[tag=datapack.thescarengine.car.parts.wheel.2] ^0.95 ^0.15 ^-0.44 0 0
tp @s[tag=datapack.thescarengine.car.parts.wheel.3] ^-0.95 ^0.15 ^-0.44 0 0

#seat
tp @s[tag=datapack.thescarengine.car.parts.driver_seat] ^-0.52 ^0.185 ^1.27

#passenger seat
tp @s[tag=datapack.thescarengine.car.parts.seat.1] ^0.52 ^0.185 ^1.27
tp @s[tag=datapack.thescarengine.car.parts.seat.2] ^-0.52 ^0.185 ^0.18
tp @s[tag=datapack.thescarengine.car.parts.seat.3] ^0.52 ^0.185 ^0.18

#color body
tp @s[tag=datapack.thescarengine.car.parts.dye_part.0] ^ ^ ^2.9

#e
execute on passengers run data modify entity @s Rotation[0] set from storage thescarengine:temp data.temp.rot
