#repeat always
tag @e[type=item,tag=!processed] add flag_process

#repeat always conditional
#empty

#chain
tag @e[type=item,tag=flag_process] add processed

#chain
tag @e[type=item,tag=flag_process,nbt={Item:{tag:{fptldj:{cb:{}}}}}] add flag_cb

