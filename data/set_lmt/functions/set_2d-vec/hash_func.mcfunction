#> set_lmt:set_2d-vec/hash_func
#
# |  31 - 16  |  15 - 0   |
# | x & 65535 | y & 65535 |
#
# @within set_lmt:set_2d-vec/**

scoreboard players set $t1 set_lmt.temp 65536
execute store result score $t0 set_lmt.temp run data get storage set_lmt.__temp__:set_2d-vec __io__.data[0]
scoreboard players operation $t0 set_lmt.temp %= $t1 set_lmt.temp

scoreboard players operation $t0 set_lmt.temp *= $t1 set_lmt.temp
execute store result score $t2 set_lmt.temp run data get storage set_lmt.__temp__:set_2d-vec __io__.data[1]
scoreboard players operation $t2 set_lmt.temp %= $t1 set_lmt.temp
scoreboard players operation $t0 set_lmt.temp += $t2 set_lmt.temp

scoreboard players get $t0 set_lmt.temp