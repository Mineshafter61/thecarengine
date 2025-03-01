#tce\data\thescarengine\function\internal\car\friction\wheel_rotflip.mcfunction
execute at @s run tp @s ~ ~ ~10000
execute on passengers run data modify entity @s Rotation[1] set from storage thescarengine:temp data.wheel_rot
execute at @s run tp @s ~ ~ ~-10000
execute on passengers store result entity @s Air float 1 run time query gametime
