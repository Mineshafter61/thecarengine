#$say $(id) $(display)




$tellraw @s [{"text":"$(display)","color":"#A6FDFD","hover_event":{"action":"show_text","value":{"text":"$(info)"}}},{"storage":"thescarengine:temp","nbt":"p.rules.$(id)","color":"dark_aqua","underlined":true,"click_event":{"action":"run_command","command":"/function thescarengine:commands/config/chattrigger/$(id)/set"}}]







#$tellraw @s [{"text":"$(display)","color":"#A6FDFD"},{"text":"\u00a73\u00a7ntrue\u00a7r \u00a77false"}]
