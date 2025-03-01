tellraw @s ["",{"text":"---------------[","color":"gray"},{"text":" T","color":"#01BABA"},{"text":"C","color":"#54DCDC"},{"text":"E ","color":"#A6FDFD"},{"text":"]---------------","color":"gray"},{"text":""}]

data modify storage thescarengine:temp data.config.in.booltype set value {id:"drop_car_item_to_inventory",display:"  dropCarItemToInventory    ",info:"If true, the Relocator will place the vehicle item into the player's inventory."}
function thescarengine:commands/config/macro_bool_rules with storage thescarengine:temp data.config.in.booltype

data modify storage thescarengine:temp data.config.in.booltype set value {id:"allow_relocator_while_riding",display:"  allowRelocatorWhileRiding    ",info:"If true, the Relocator can be used while riding a vehicle."}
function thescarengine:commands/config/macro_bool_rules with storage thescarengine:temp data.config.in.booltype

data modify storage thescarengine:temp data.config.in.booltype set value {id:"tce_disable_confirmation",display:"  tceDisableConfirmation       ",info:"If true, using /function tce:off will require confirmation."}
function thescarengine:commands/config/macro_bool_rules with storage thescarengine:temp data.config.in.booltype

#data modify storage thescarengine:temp data.config.in.booltype set value {id:"use_dynamic_collision_check",display:"  useDynamicCollisionCheck    ",info:"This setting is locked and will be removed in a future update."}
#function thescarengine:commands/config/macro_bool_rules with storage thescarengine:temp data.config.in.booltype

data modify storage thescarengine:temp data.config.in.booltype set value {id:"player_rotate_with_vehicle",display:"  playerRotateWithVehicle      ",info:"[Experimental, may be buggy] If true, the player rotates with the vehicle."}
function thescarengine:commands/config/macro_bool_rules with storage thescarengine:temp data.config.in.booltype

data modify storage thescarengine:temp data.config.in.booltype set value {id:"collision_collide_collision",display:"  collisionCollideCollision       ",info:"[Experimental, may be buggy] If true, collision behaves like a solid block to other collisions."}
function thescarengine:commands/config/macro_bool_rules with storage thescarengine:temp data.config.in.booltype

data modify storage thescarengine:temp data.config.in.input set value {id:"kill_near_distance",display:"  killNearDistance               ",info:"Radius for /function tce:kill/near in blocks."}
function thescarengine:commands/config/macro_input_rules with storage thescarengine:temp data.config.in.input

data modify storage thescarengine:temp data.config.in.input set value {id:"unload_vehicle_after_ticks",display:"  unloadVehicleAfterTicks     ",info:"Time in ticks before an idle vehicle unloads."}
function thescarengine:commands/config/macro_input_rules with storage thescarengine:temp data.config.in.input

data modify storage thescarengine:temp data.config.in.input set value {id:"snap_vehicle_rotation_range",display:"  snapVehicleRotationRange   ",info:"A positive angle (default 0, max 45°). The vehicle snaps rotation to 0°, 90°, 180°, or 270°."}
function thescarengine:commands/config/macro_input_rules with storage thescarengine:temp data.config.in.input

data modify storage thescarengine:temp data.config.in.input set value {id:"kill_vehicle_under_y",display:"  killVehicleUnderY              ",info:"Removes vehicles that fall below this Y position."}
function thescarengine:commands/config/macro_input_rules with storage thescarengine:temp data.config.in.input

tellraw @s [{"text":""},{"text":"------------------------------------","color":"gray"}]
