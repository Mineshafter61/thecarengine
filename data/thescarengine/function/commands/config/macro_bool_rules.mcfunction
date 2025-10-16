#$say $(id) $(display)



$execute if data storage thescarengine:temp {p:{rules:{$(id):0}}} run tellraw @s [{"text":"$(display)","color":"#A6FDFD","hover_event":{"action":"show_text","value":{"text":"$(info)"}}},{"text":"true","color":"gray","click_event":{"action":"run_command","command":"/function thescarengine:commands/config/chattrigger/$(id)/1"}},{"text":" "},{"text":"false","color":"dark_aqua","underlined":true}]

$execute if data storage thescarengine:temp {p:{rules:{$(id):1}}} run tellraw @s [{"text":"$(display)","color":"#A6FDFD","hover_event":{"action":"show_text","value":{"text":"$(info)"}}},{"text":"true","color":"dark_aqua","underlined":true},{"text":" "},{"text":"false","color":"gray","click_event":{"action":"run_command","command":"/function thescarengine:commands/config/chattrigger/$(id)/0"}}]








#$tellraw @s [{"text":"$(display)","color":"#A6FDFD"},{"text":"\u00a73\u00a7ntrue\u00a7r \u00a77false"}]
