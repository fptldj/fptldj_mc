#repeat always
tag @e[type=item,tag=flag_process] remove flag_process

#repeat always conditional
#none

#chain
tag @e[type=item,tag=flag_cb] remove flag_cb

#chain
tag @e[type=item,tag=flag_dropped] remove flag_dropped