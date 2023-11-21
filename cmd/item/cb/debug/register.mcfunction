#repeat
execute store result block ~ ~ ~ auto byte 0 run tag @e[type=item,nbt={Item:{tag:{fptldj:{cb:{pos:[2.0d,1.0d,8.0d]}}}}}] add flag_i1

#chain
execute positioned as @e[type=item,tag=flag_i1] run tag @e[type=item,limit=1,distance=0.1..5,sort=nearest] add flag_i2

#chain
execute as @e[type=item,tag=flag_i2] positioned as @s align xyz run tp @s ~ ~ ~1

#chain
execute as @e[type=item,tag=flag_i2] run data modify entity @s Item.tag.fptldj.cb.pos set from entity @s Pos

#chain
execute as @e[type=item,tag=flag_i2] positioned as @e[type=item,tag=flag_i1] run tellraw @p [{"text":"item.cb.pos:"},{"nbt":"Item.tag.fptldj.cb.pos","entity":"@s"}]

#chain
execute if data block ~ ~-1 ~ {SuccessCount:0} positioned as @e[type=item,tag=flag_i1] run tellraw @p "item.cb.register failed"

#chain
execute as @e[type=item,tag=flag_i1] run data modify entity @s PickupDelay set value 0

#chain
tag @e[type=item,tag=flag_i2] remove flag_i2