#triggered from advancement
advancement revoke @s only thescarengine:relocator_used

tag @s add datapack.temp.thecarengine.item.relocator.using
function thescarengine:internal/car_item/relocator/main
tag @s remove datapack.temp.thecarengine.item.relocator.using