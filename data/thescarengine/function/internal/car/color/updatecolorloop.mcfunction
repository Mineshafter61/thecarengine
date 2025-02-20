#run by data\thescarengine\function\internal\car\color\update_main.mcfunction

tellraw @a[tag=thescarengine.debugger] "\u00a77updatecolorloop"

#get 1 item of list (last)
data modify storage thescarengine:temp data.color.macro2.part set from storage thescarengine:temp data.color.updateparts[-1]
function thescarengine:internal/car/color/updatecolorloop_macro with storage thescarengine:temp data.color.macro2.part

#remove last item
data remove storage thescarengine:temp data.color.updateparts[-1]

#loop if there's part left
execute if data storage thescarengine:temp data.color.updateparts[0] run function thescarengine:internal/car/color/updatecolorloop