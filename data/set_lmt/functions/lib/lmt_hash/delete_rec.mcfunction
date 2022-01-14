#> set_lmt:lib/lmt_hash/delete_rec
# @within set_lmt:lib/lmt_hash/delete*

# 
  execute store success score $t1 set_lmt.temp run data modify storage set_lmt.__temp__:lib/lmt_hash __temp__.match_list[-1] set from storage set_lmt.__temp__:lib/lmt_hash __io__.data
  data remove storage set_lmt.__temp__:lib/lmt_hash __temp__.match_list[-1]
  execute if score $t1 set_lmt.temp matches 1 run data modify storage set_lmt.__temp__:lib/lmt_hash __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] prepend from storage set_lmt.__temp__:lib/lmt_hash __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-1]
  data remove storage set_lmt.__temp__:lib/lmt_hash __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-1]

# 
  scoreboard players remove $t0 set_lmt.temp 1
  execute if score $t0 set_lmt.temp matches 1.. run function set_lmt:lib/lmt_hash/delete_rec
