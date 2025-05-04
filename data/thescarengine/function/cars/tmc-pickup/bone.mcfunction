#this function ran by pivot


#pickup


#collision
tp @s[tag=datapack.thescarengine.car.parts.collision.0] ^0.95 ^-0.2 ^3.04 0 0
tp @s[tag=datapack.thescarengine.car.parts.collision.1] ^-0.95 ^-0.2 ^3.04 0 0
tp @s[tag=datapack.thescarengine.car.parts.collision.3] ^0.95 ^-0.2 ^-0.51 0 0
tp @s[tag=datapack.thescarengine.car.parts.collision.2] ^-0.95 ^-0.2 ^-0.51 0 0


#car
tp @s[tag=datapack.thescarengine.car.parts.wheel.0] ^0.95 ^0.160 ^3.04 0 0
tp @s[tag=datapack.thescarengine.car.parts.wheel.1] ^-0.95 ^0.160 ^3.04 0 0
tp @s[tag=datapack.thescarengine.car.parts.wheel.2] ^0.95 ^0.160 ^-0.51 0 0
tp @s[tag=datapack.thescarengine.car.parts.wheel.3] ^-0.95 ^0.160 ^-0.51 0 0

#seat
tp @s[tag=datapack.thescarengine.car.parts.driver_seat] ^-0.52 ^0.38 ^1.34

#passenger seat
tp @s[tag=datapack.thescarengine.car.parts.seat.1] ^0.52 ^0.38 ^1.34
tp @s[tag=datapack.thescarengine.car.parts.seat.2] ^0.50 ^0.6 ^0.19
tp @s[tag=datapack.thescarengine.car.parts.seat.3] ^-0.50 ^0.6 ^0.19
tp @s[tag=datapack.thescarengine.car.parts.seat.4] ^0 ^0.6 ^-0.705
tp @s[tag=datapack.thescarengine.car.parts.seat.5] ^-0.50 ^0.6 ^-1.61
tp @s[tag=datapack.thescarengine.car.parts.seat.6] ^0.50 ^0.6 ^-1.61

#color body
tp @s[tag=datapack.thescarengine.car.parts.dye_part.0] ^ ^0.2 ^2.92

#e
execute on passengers run data modify entity @s Rotation[0] set from storage thescarengine:temp data.temp.rot
