execute on passengers if entity @s[type=interaction] rotated as @s at @s run particle minecraft:smoke ^-0.1 ^-0.2 ^-3.3 0 0 0 0 1 normal
execute on passengers if entity @s[type=interaction] rotated as @s at @s run particle minecraft:smoke ^1.15 ^-0.2 ^-3.3 0 0 0 0 1 normal

execute if score .keyS datapack.temp.thecarengine.main matches 1 if score @s datapack.temp.thecarengine.car.speed matches 11111.. as @e[tag=datapack.thescarengine.car.parts.wheel,tag=datapack.thescarengine.car.parts.selected] at @s run particle cloud ~ ~-0.4 ~ 0 0 0 0 1 normal