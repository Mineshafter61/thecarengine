#this function ran by pivot


#kangtumes90s


#collision

tp @s[tag=datapack.thescarengine.car.parts.collision.0] ^-1.0 ^-0.484130859375 ^1.6875 0 0
tp @s[tag=datapack.thescarengine.car.parts.collision.1] ^1.0 ^-0.484130859375 ^1.6875 0 0
tp @s[tag=datapack.thescarengine.car.parts.collision.3] ^-1.0 ^-0.484130859375 ^-1.375 0 0
tp @s[tag=datapack.thescarengine.car.parts.collision.2] ^1.0 ^-0.484130859375 ^-1.375 0 0


#car
tp @s[tag=datapack.thescarengine.car.parts.wheel.0] ^-1.0 ^0.0 ^1.6875 0 0
tp @s[tag=datapack.thescarengine.car.parts.wheel.1] ^1.0 ^0.0 ^1.6875 0 0
tp @s[tag=datapack.thescarengine.car.parts.wheel.2] ^-1.0 ^0.0 ^-1.375 0 0
tp @s[tag=datapack.thescarengine.car.parts.wheel.3] ^1.0 ^0.0 ^-1.375 0 0

#seat
tp @s[tag=datapack.thescarengine.car.parts.driver_seat] ^0.0 ^0.6875 ^-0.75


#e
execute on passengers run data modify entity @s Rotation[0] set from storage thescarengine:temp data.temp.rot
