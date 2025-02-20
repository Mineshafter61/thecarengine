
#check if it's a number and positive
$execute if entity @s[distance=$(raw)]

#parse to num
$data modify storage thescarengine:temp p.rules.snap_vehicle_rotation_range set value $(raw)

#to scoreboard
function thescarengine:commands/config/to_score_board

scoreboard players set .internal.config.temp1.is_success datapack.temp.thecarengine.main 1