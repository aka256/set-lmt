#> set_list:delete_rec
# @within set_list:delete*

data modify storage set_list.__temp__: __io__.list append from storage set_list.__temp__: __temp__.cache[-1]
execute store success score $t0 set_list.temp run data modify storage set_list.__temp__: __io__.list[-1] set from storage set_list.__temp__: __io__.data
execute if score $t0 set_list.temp matches 1 run data modify storage set_list.__temp__: __io__.list[0] set from storage set_list.__temp__: __temp__.cache[-1]
execute if score $t0 set_list.temp matches 0 run data remove storage set_list.__temp__: __io__.list[-1]
data remove storage set_list.__temp__: __temp__.cache[-1]

execute if data storage set_list.__temp__: __temp__.cache[-1] run function set_list:delete_rec
