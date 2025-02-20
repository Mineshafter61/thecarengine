#ran from main
$execute as @e[nbt={interaction:{player:$(playeruuid),timestamp:$(gametime)L}},type=interaction,x=0,limit=1] run function thescarengine:internal/car_item/relocator/asinteraction

