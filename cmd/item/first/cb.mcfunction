#repeat always
execute if entity @e[type=item,limit=1,tag=flag_i1]

#repeat always conditional
#none

#chain
execute as @e[type=item,tag=flag_i1] run data modify entity @s Item.tag.fptldj.tmp set from entity @s Pos

#chain
execute as @e[type=item,tag=flag_i1] run data modify entity @s Pos set from entity @s Item.tag.fptldj.cb.pos

#chain
execute positioned as @e[type=item,tag=flag_i1] run data modify block ~ ~ ~ auto set value 1b

#chain
execute as @e[type=item,tag=flag_i1] run data modify entity @s Pos set from entity @s Item.tag.fptldj.tmp

#chain
execute as @e[type=item,tag=flag_i1] run data remove entity @s Item.tag.fptldj.tmp

#chain
tag @e[type=item,tag=flag_i1] remove flag_i1