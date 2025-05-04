#this function ran by pivot


#pickup-double-cab


#collision
tp @s[tag=datapack.thescarengine.car.parts.collision.0] ^0.95 ^-0.2 ^3.2 0 0
tp @s[tag=datapack.thescarengine.car.parts.collision.1] ^-0.95 ^-0.2 ^3.2 0 0
tp @s[tag=datapack.thescarengine.car.parts.collision.3] ^0.95 ^-0.2 ^-0.54 0 0
tp @s[tag=datapack.thescarengine.car.parts.collision.2] ^-0.95 ^-0.2 ^-0.54 0 0


#car
tp @s[tag=datapack.thescarengine.car.parts.wheel.0] ^0.95 ^0.160 ^3.2 0 0
tp @s[tag=datapack.thescarengine.car.parts.wheel.1] ^-0.95 ^0.160 ^3.2 0 0
tp @s[tag=datapack.thescarengine.car.parts.wheel.2] ^0.95 ^0.160 ^-0.54 0 0
tp @s[tag=datapack.thescarengine.car.parts.wheel.3] ^-0.95 ^0.160 ^-0.54 0 0

#seat
tp @s[tag=datapack.thescarengine.car.parts.driver_seat] ^-0.52 ^0.38 ^1.58

#passenger seat
tp @s[tag=datapack.thescarengine.car.parts.seat.1] ^0.52 ^0.38 ^1.58
tp @s[tag=datapack.thescarengine.car.parts.seat.2] ^-0.50 ^0.38 ^0.52
tp @s[tag=datapack.thescarengine.car.parts.seat.3] ^0.50 ^0.38 ^0.52
tp @s[tag=datapack.thescarengine.car.parts.seat.4] ^0.0 ^0.6 ^-0.67
tp @s[tag=datapack.thescarengine.car.parts.seat.5] ^0.0 ^0.6 ^-1.52

#color body
tp @s[tag=datapack.thescarengine.car.parts.dye_part.0] ^ ^0.2 ^3.08

#e
execute on passengers run data modify entity @s Rotation[0] set from storage thescarengine:temp data.temp.rot
