# ================================
# Car Configuration: Chestler LR
# ================================

# Car Display Name
data modify storage thescarengine:temp settings.car_display set value "chestler-lr"

# ================================
# Acceleration & Braking
# ================================

# Forward acceleration (higher div = slower acceleration, max = speed limit per tick)
data modify storage thescarengine:temp settings.forward_accel set value {div:190, max:0.015}

# Braking force when moving forward
data modify storage thescarengine:temp settings.forward_brake set value 0.02

# Backward acceleration (higher div = slower acceleration, max should be negative)
data modify storage thescarengine:temp settings.backward_accel set value {div:25, max:-0.02}

# Braking force when moving backward
data modify storage thescarengine:temp settings.backward_brake set value 0.02

# ================================
# Speed & Friction
# ================================

# Friction (speed reduction when no input is given)
data modify storage thescarengine:temp settings.friction set value 0.005

# If car has more speed than this value (b/t), interpolation will set to 1 for smoothness
data modify storage thescarengine:temp settings.wheel_interpolation_range set value 1

# Maximum forward speed
data modify storage thescarengine:temp settings.max_vel set value 2.5

# Maximum backward speed (should be negative)
data modify storage thescarengine:temp settings.min_vel set value -0.5

# ================================
# Steering & Rotation
# ================================

# Wheel rotation speed
data modify storage thescarengine:temp settings.wheel_rot set value {div: 1, mul: 50}

# If car has more speed than this value (b/t), interpolation will set to 1 for smoothness
data modify storage thescarengine:temp settings.wheel_interpolation_range set value 0.833

# Maximum wheel turn angle (degrees)
data modify storage thescarengine:temp settings.wheel_turn set value 30

# Steering response (adjusts turn speed based on velocity)
data modify storage thescarengine:temp settings.turn set value {str: 0, div: 1, mul: 7, max: 5}


# ================================
# Car Item
# ================================

# Item Id (main item)
data modify storage thescarengine:temp settings.placed_item.id set value "minecraft:green_dye"

# Item Color (changed color of item to match a part of the car)
data modify storage thescarengine:temp settings.placed_item.item_color set value "datapack.thescarengine.car.parts.pivot"

# Item data ()
data modify storage thescarengine:temp settings.placed_item set value {components: {"minecraft:item_name": '{"color":"#CCFFFF","text":"Chestler LR"}', "minecraft:lore": ['{"extra":[{"bold":false,"color":"gray","italic":false,"obfuscated":false,"strikethrough":false,"text":"Right-Click to place vehicle","underlined":false}],"text":""}', '""', '{"extra":[{"bold":false,"color":"gray","italic":false,"obfuscated":false,"strikethrough":false,"text":"Vehicle Info:","underlined":false}],"text":""}', '{"extra":[{"bold":false,"color":"gray","italic":false,"obfuscated":false,"strikethrough":false,"text":" Brand: Chestler","underlined":false}],"text":""}', '{"extra":[{"bold":false,"color":"gray","italic":false,"obfuscated":false,"strikethrough":false,"text":" Type: Convertible","underlined":false}],"text":""}', '{"extra":[{"bold":false,"color":"gray","italic":false,"obfuscated":false,"strikethrough":false,"text":" Max Speed: 180km/h","underlined":false}],"text":""}'], "minecraft:max_stack_size": 1,"hide_additional_tooltip":{}}, count: 1, id: "minecraft:green_dye"}





