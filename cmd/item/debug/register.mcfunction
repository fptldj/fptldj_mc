#repeat
execute store result block ~ ~ ~ auto byte 0 as @e[type=item,limit=1,sort=nearest] run data modify entity @s Item.tag.fptldj.cb.pos set from entity @s Pos

#chain
say test