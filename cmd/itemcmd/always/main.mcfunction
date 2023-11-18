#repeat always
tag @e[type=item,tag=!processed] add flag_i1

#repeat always conditional
#none

#chain
tag @e[type=item,tag=flag_i1] add processed

#chain
tag @e[type=item,tag=flag_i1,nbt=!{Item:{tag:{fptldj:{itemcmd:{}}}}}] remove flag_i1

#chain
execute as @e[type=item,tag=flag_i1] run data modify entity @s Item.tag.tmp set from entity @s Pos