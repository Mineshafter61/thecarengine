#ran by data\thescarengine\function\internal\car_item\spray_scan\asinteraction.mcfunction
tellraw @a[tag=thescarengine.debugger] "\u00a77dyepartloop"

#get 1 item of list (last)
data modify storage thescarengine:temp data.internal.spray_item.macro2.part set from storage thescarengine:temp data.internal.spray_item.target_dye_parts[-1]
function thescarengine:internal/car_item/spray_scan/dyepartloop_macro with storage thescarengine:temp data.internal.spray_item.macro2

#remove last item
data remove storage thescarengine:temp data.internal.spray_item.target_dye_parts[-1]

#loop if there's part left
execute if data storage thescarengine:temp data.internal.spray_item.target_dye_parts[0] run function thescarengine:internal/car_item/spray_scan/dyepartloop