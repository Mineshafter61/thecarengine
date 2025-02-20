#this function ran by pivot


#sedan


#collision
tp @s[tag=datapack.thescarengine.car.parts.collision.0] ^0.95 ^-0.17 ^1.69 0 0
tp @s[tag=datapack.thescarengine.car.parts.collision.1] ^-0.95 ^-0.17 ^1.69 0 0
tp @s[tag=datapack.thescarengine.car.parts.collision.3] ^0.95 ^-0.17 ^-1.44 0 0
tp @s[tag=datapack.thescarengine.car.parts.collision.2] ^-0.95 ^-0.17 ^-1.44 0 0


#car
tp @s[tag=datapack.thescarengine.car.parts.wheel.0] ^0.95 ^0.15 ^1.69 0 0
tp @s[tag=datapack.thescarengine.car.parts.wheel.1] ^-0.95 ^0.15 ^1.69 0 0
tp @s[tag=datapack.thescarengine.car.parts.wheel.2] ^0.95 ^0.15 ^-1.44 0 0
tp @s[tag=datapack.thescarengine.car.parts.wheel.3] ^-0.95 ^0.15 ^-1.44 0 0

#seat
tp @s[tag=datapack.thescarengine.car.parts.driver_seat] ^-0.53 ^0.185 ^0.27

#passenger seat
tp @s[tag=datapack.thescarengine.car.parts.seat.1] ^0.53 ^0.185 ^0.27
tp @s[tag=datapack.thescarengine.car.parts.seat.2] ^-0.53 ^0.185 ^-0.82
tp @s[tag=datapack.thescarengine.car.parts.seat.3] ^0.53 ^0.185 ^-0.82

#color body
tp @s[tag=datapack.thescarengine.car.parts.dye_part.0] ^ ^ ^1.9

#e
execute on passengers run data modify entity @s Rotation[0] set from storage thescarengine:temp data.temp.rot
