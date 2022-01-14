#> set_lmt:lib/lmt/_touch
# @within set_lmt:lib/lmt/touch

execute store result score $t0 set_lmt.temp run data get storage set_lmt.__temp__:lib/lmt __io__.index
execute store result score $t1 set_lmt.temp if data storage set_lmt.__temp__:lib/lmt __io__.lmt._[]
execute if score $t1 set_lmt.temp matches 0 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._ append from storage set_lmt:lib/lmt branch[]
execute if score $t1 set_lmt.temp matches 0 run scoreboard players set $t1 set_lmt.temp 2
execute if score $t1 set_lmt.temp matches 3 if score $t0 set_lmt.temp matches 0.. run data remove storage set_lmt.__temp__:lib/lmt __io__.lmt._[2]
execute if score $t1 set_lmt.temp matches 2 if score $t0 set_lmt.temp matches ..-1 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._ append value []

scoreboard players operation $t0 set_lmt.temp += $t0 set_lmt.temp
execute store result score $t1 set_lmt.temp if data storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][]
execute if score $t1 set_lmt.temp matches 0 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2] append from storage set_lmt:lib/lmt branch[]
execute if score $t1 set_lmt.temp matches 0 run scoreboard players set $t1 set_lmt.temp 2
execute if score $t1 set_lmt.temp matches 3 if score $t0 set_lmt.temp matches 0.. run data remove storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][2]
execute if score $t1 set_lmt.temp matches 2 if score $t0 set_lmt.temp matches ..-1 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2] append value []

scoreboard players operation $t0 set_lmt.temp += $t0 set_lmt.temp
execute store result score $t1 set_lmt.temp if data storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][]
execute if score $t1 set_lmt.temp matches 0 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2] append from storage set_lmt:lib/lmt branch[]
execute if score $t1 set_lmt.temp matches 0 run scoreboard players set $t1 set_lmt.temp 2
execute if score $t1 set_lmt.temp matches 3 if score $t0 set_lmt.temp matches 0.. run data remove storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][2]
execute if score $t1 set_lmt.temp matches 2 if score $t0 set_lmt.temp matches ..-1 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2] append value []

scoreboard players operation $t0 set_lmt.temp += $t0 set_lmt.temp
execute store result score $t1 set_lmt.temp if data storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][]
execute if score $t1 set_lmt.temp matches 0 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2] append from storage set_lmt:lib/lmt branch[]
execute if score $t1 set_lmt.temp matches 0 run scoreboard players set $t1 set_lmt.temp 2
execute if score $t1 set_lmt.temp matches 3 if score $t0 set_lmt.temp matches 0.. run data remove storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][2]
execute if score $t1 set_lmt.temp matches 2 if score $t0 set_lmt.temp matches ..-1 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2] append value []

scoreboard players operation $t0 set_lmt.temp += $t0 set_lmt.temp
execute store result score $t1 set_lmt.temp if data storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][]
execute if score $t1 set_lmt.temp matches 0 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2] append from storage set_lmt:lib/lmt branch[]
execute if score $t1 set_lmt.temp matches 0 run scoreboard players set $t1 set_lmt.temp 2
execute if score $t1 set_lmt.temp matches 3 if score $t0 set_lmt.temp matches 0.. run data remove storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][2]
execute if score $t1 set_lmt.temp matches 2 if score $t0 set_lmt.temp matches ..-1 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2] append value []

scoreboard players operation $t0 set_lmt.temp += $t0 set_lmt.temp
execute store result score $t1 set_lmt.temp if data storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][]
execute if score $t1 set_lmt.temp matches 0 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2] append from storage set_lmt:lib/lmt branch[]
execute if score $t1 set_lmt.temp matches 0 run scoreboard players set $t1 set_lmt.temp 2
execute if score $t1 set_lmt.temp matches 3 if score $t0 set_lmt.temp matches 0.. run data remove storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][2]
execute if score $t1 set_lmt.temp matches 2 if score $t0 set_lmt.temp matches ..-1 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2] append value []

scoreboard players operation $t0 set_lmt.temp += $t0 set_lmt.temp
execute store result score $t1 set_lmt.temp if data storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][]
execute if score $t1 set_lmt.temp matches 0 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2] append from storage set_lmt:lib/lmt branch[]
execute if score $t1 set_lmt.temp matches 0 run scoreboard players set $t1 set_lmt.temp 2
execute if score $t1 set_lmt.temp matches 3 if score $t0 set_lmt.temp matches 0.. run data remove storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][2]
execute if score $t1 set_lmt.temp matches 2 if score $t0 set_lmt.temp matches ..-1 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2] append value []

scoreboard players operation $t0 set_lmt.temp += $t0 set_lmt.temp
execute store result score $t1 set_lmt.temp if data storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][]
execute if score $t1 set_lmt.temp matches 0 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2] append from storage set_lmt:lib/lmt branch[]
execute if score $t1 set_lmt.temp matches 0 run scoreboard players set $t1 set_lmt.temp 2
execute if score $t1 set_lmt.temp matches 3 if score $t0 set_lmt.temp matches 0.. run data remove storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][2]
execute if score $t1 set_lmt.temp matches 2 if score $t0 set_lmt.temp matches ..-1 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2] append value []

scoreboard players operation $t0 set_lmt.temp += $t0 set_lmt.temp
execute store result score $t1 set_lmt.temp if data storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][]
execute if score $t1 set_lmt.temp matches 0 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2] append from storage set_lmt:lib/lmt branch[]
execute if score $t1 set_lmt.temp matches 0 run scoreboard players set $t1 set_lmt.temp 2
execute if score $t1 set_lmt.temp matches 3 if score $t0 set_lmt.temp matches 0.. run data remove storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][2]
execute if score $t1 set_lmt.temp matches 2 if score $t0 set_lmt.temp matches ..-1 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2] append value []

scoreboard players operation $t0 set_lmt.temp += $t0 set_lmt.temp
execute store result score $t1 set_lmt.temp if data storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][]
execute if score $t1 set_lmt.temp matches 0 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2] append from storage set_lmt:lib/lmt branch[]
execute if score $t1 set_lmt.temp matches 0 run scoreboard players set $t1 set_lmt.temp 2
execute if score $t1 set_lmt.temp matches 3 if score $t0 set_lmt.temp matches 0.. run data remove storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][2]
execute if score $t1 set_lmt.temp matches 2 if score $t0 set_lmt.temp matches ..-1 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2] append value []

scoreboard players operation $t0 set_lmt.temp += $t0 set_lmt.temp
execute store result score $t1 set_lmt.temp if data storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][]
execute if score $t1 set_lmt.temp matches 0 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append from storage set_lmt:lib/lmt branch[]
execute if score $t1 set_lmt.temp matches 0 run scoreboard players set $t1 set_lmt.temp 2
execute if score $t1 set_lmt.temp matches 3 if score $t0 set_lmt.temp matches 0.. run data remove storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2]
execute if score $t1 set_lmt.temp matches 2 if score $t0 set_lmt.temp matches ..-1 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append value []

scoreboard players operation $t0 set_lmt.temp += $t0 set_lmt.temp
execute store result score $t1 set_lmt.temp if data storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][]
execute if score $t1 set_lmt.temp matches 0 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append from storage set_lmt:lib/lmt branch[]
execute if score $t1 set_lmt.temp matches 0 run scoreboard players set $t1 set_lmt.temp 2
execute if score $t1 set_lmt.temp matches 3 if score $t0 set_lmt.temp matches 0.. run data remove storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2]
execute if score $t1 set_lmt.temp matches 2 if score $t0 set_lmt.temp matches ..-1 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append value []

scoreboard players operation $t0 set_lmt.temp += $t0 set_lmt.temp
execute store result score $t1 set_lmt.temp if data storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][]
execute if score $t1 set_lmt.temp matches 0 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append from storage set_lmt:lib/lmt branch[]
execute if score $t1 set_lmt.temp matches 0 run scoreboard players set $t1 set_lmt.temp 2
execute if score $t1 set_lmt.temp matches 3 if score $t0 set_lmt.temp matches 0.. run data remove storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2]
execute if score $t1 set_lmt.temp matches 2 if score $t0 set_lmt.temp matches ..-1 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append value []

scoreboard players operation $t0 set_lmt.temp += $t0 set_lmt.temp
execute store result score $t1 set_lmt.temp if data storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][]
execute if score $t1 set_lmt.temp matches 0 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append from storage set_lmt:lib/lmt branch[]
execute if score $t1 set_lmt.temp matches 0 run scoreboard players set $t1 set_lmt.temp 2
execute if score $t1 set_lmt.temp matches 3 if score $t0 set_lmt.temp matches 0.. run data remove storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2]
execute if score $t1 set_lmt.temp matches 2 if score $t0 set_lmt.temp matches ..-1 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append value []

scoreboard players operation $t0 set_lmt.temp += $t0 set_lmt.temp
execute store result score $t1 set_lmt.temp if data storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][]
execute if score $t1 set_lmt.temp matches 0 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append from storage set_lmt:lib/lmt branch[]
execute if score $t1 set_lmt.temp matches 0 run scoreboard players set $t1 set_lmt.temp 2
execute if score $t1 set_lmt.temp matches 3 if score $t0 set_lmt.temp matches 0.. run data remove storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2]
execute if score $t1 set_lmt.temp matches 2 if score $t0 set_lmt.temp matches ..-1 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append value []

scoreboard players operation $t0 set_lmt.temp += $t0 set_lmt.temp
execute store result score $t1 set_lmt.temp if data storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][]
execute if score $t1 set_lmt.temp matches 0 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append from storage set_lmt:lib/lmt branch[]
execute if score $t1 set_lmt.temp matches 0 run scoreboard players set $t1 set_lmt.temp 2
execute if score $t1 set_lmt.temp matches 3 if score $t0 set_lmt.temp matches 0.. run data remove storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2]
execute if score $t1 set_lmt.temp matches 2 if score $t0 set_lmt.temp matches ..-1 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append value []

scoreboard players operation $t0 set_lmt.temp += $t0 set_lmt.temp
execute store result score $t1 set_lmt.temp if data storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][]
execute if score $t1 set_lmt.temp matches 0 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append from storage set_lmt:lib/lmt branch[]
execute if score $t1 set_lmt.temp matches 0 run scoreboard players set $t1 set_lmt.temp 2
execute if score $t1 set_lmt.temp matches 3 if score $t0 set_lmt.temp matches 0.. run data remove storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2]
execute if score $t1 set_lmt.temp matches 2 if score $t0 set_lmt.temp matches ..-1 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append value []

scoreboard players operation $t0 set_lmt.temp += $t0 set_lmt.temp
execute store result score $t1 set_lmt.temp if data storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][]
execute if score $t1 set_lmt.temp matches 0 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append from storage set_lmt:lib/lmt branch[]
execute if score $t1 set_lmt.temp matches 0 run scoreboard players set $t1 set_lmt.temp 2
execute if score $t1 set_lmt.temp matches 3 if score $t0 set_lmt.temp matches 0.. run data remove storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2]
execute if score $t1 set_lmt.temp matches 2 if score $t0 set_lmt.temp matches ..-1 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append value []

scoreboard players operation $t0 set_lmt.temp += $t0 set_lmt.temp
execute store result score $t1 set_lmt.temp if data storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][]
execute if score $t1 set_lmt.temp matches 0 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append from storage set_lmt:lib/lmt branch[]
execute if score $t1 set_lmt.temp matches 0 run scoreboard players set $t1 set_lmt.temp 2
execute if score $t1 set_lmt.temp matches 3 if score $t0 set_lmt.temp matches 0.. run data remove storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2]
execute if score $t1 set_lmt.temp matches 2 if score $t0 set_lmt.temp matches ..-1 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append value []

scoreboard players operation $t0 set_lmt.temp += $t0 set_lmt.temp
execute store result score $t1 set_lmt.temp if data storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][]
execute if score $t1 set_lmt.temp matches 0 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append from storage set_lmt:lib/lmt branch[]
execute if score $t1 set_lmt.temp matches 0 run scoreboard players set $t1 set_lmt.temp 2
execute if score $t1 set_lmt.temp matches 3 if score $t0 set_lmt.temp matches 0.. run data remove storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2]
execute if score $t1 set_lmt.temp matches 2 if score $t0 set_lmt.temp matches ..-1 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append value []

scoreboard players operation $t0 set_lmt.temp += $t0 set_lmt.temp
execute store result score $t1 set_lmt.temp if data storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][]
execute if score $t1 set_lmt.temp matches 0 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append from storage set_lmt:lib/lmt branch[]
execute if score $t1 set_lmt.temp matches 0 run scoreboard players set $t1 set_lmt.temp 2
execute if score $t1 set_lmt.temp matches 3 if score $t0 set_lmt.temp matches 0.. run data remove storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2]
execute if score $t1 set_lmt.temp matches 2 if score $t0 set_lmt.temp matches ..-1 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append value []

scoreboard players operation $t0 set_lmt.temp += $t0 set_lmt.temp
execute store result score $t1 set_lmt.temp if data storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][]
execute if score $t1 set_lmt.temp matches 0 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append from storage set_lmt:lib/lmt branch[]
execute if score $t1 set_lmt.temp matches 0 run scoreboard players set $t1 set_lmt.temp 2
execute if score $t1 set_lmt.temp matches 3 if score $t0 set_lmt.temp matches 0.. run data remove storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2]
execute if score $t1 set_lmt.temp matches 2 if score $t0 set_lmt.temp matches ..-1 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append value []

scoreboard players operation $t0 set_lmt.temp += $t0 set_lmt.temp
execute store result score $t1 set_lmt.temp if data storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][]
execute if score $t1 set_lmt.temp matches 0 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append from storage set_lmt:lib/lmt branch[]
execute if score $t1 set_lmt.temp matches 0 run scoreboard players set $t1 set_lmt.temp 2
execute if score $t1 set_lmt.temp matches 3 if score $t0 set_lmt.temp matches 0.. run data remove storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2]
execute if score $t1 set_lmt.temp matches 2 if score $t0 set_lmt.temp matches ..-1 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append value []

scoreboard players operation $t0 set_lmt.temp += $t0 set_lmt.temp
execute store result score $t1 set_lmt.temp if data storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][]
execute if score $t1 set_lmt.temp matches 0 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append from storage set_lmt:lib/lmt branch[]
execute if score $t1 set_lmt.temp matches 0 run scoreboard players set $t1 set_lmt.temp 2
execute if score $t1 set_lmt.temp matches 3 if score $t0 set_lmt.temp matches 0.. run data remove storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2]
execute if score $t1 set_lmt.temp matches 2 if score $t0 set_lmt.temp matches ..-1 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append value []

scoreboard players operation $t0 set_lmt.temp += $t0 set_lmt.temp
execute store result score $t1 set_lmt.temp if data storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][]
execute if score $t1 set_lmt.temp matches 0 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append from storage set_lmt:lib/lmt branch[]
execute if score $t1 set_lmt.temp matches 0 run scoreboard players set $t1 set_lmt.temp 2
execute if score $t1 set_lmt.temp matches 3 if score $t0 set_lmt.temp matches 0.. run data remove storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2]
execute if score $t1 set_lmt.temp matches 2 if score $t0 set_lmt.temp matches ..-1 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append value []

scoreboard players operation $t0 set_lmt.temp += $t0 set_lmt.temp
execute store result score $t1 set_lmt.temp if data storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][]
execute if score $t1 set_lmt.temp matches 0 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append from storage set_lmt:lib/lmt branch[]
execute if score $t1 set_lmt.temp matches 0 run scoreboard players set $t1 set_lmt.temp 2
execute if score $t1 set_lmt.temp matches 3 if score $t0 set_lmt.temp matches 0.. run data remove storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2]
execute if score $t1 set_lmt.temp matches 2 if score $t0 set_lmt.temp matches ..-1 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append value []

scoreboard players operation $t0 set_lmt.temp += $t0 set_lmt.temp
execute store result score $t1 set_lmt.temp if data storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][]
execute if score $t1 set_lmt.temp matches 0 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append from storage set_lmt:lib/lmt branch[]
execute if score $t1 set_lmt.temp matches 0 run scoreboard players set $t1 set_lmt.temp 2
execute if score $t1 set_lmt.temp matches 3 if score $t0 set_lmt.temp matches 0.. run data remove storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2]
execute if score $t1 set_lmt.temp matches 2 if score $t0 set_lmt.temp matches ..-1 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append value []

scoreboard players operation $t0 set_lmt.temp += $t0 set_lmt.temp
execute store result score $t1 set_lmt.temp if data storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][]
execute if score $t1 set_lmt.temp matches 0 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append from storage set_lmt:lib/lmt branch[]
execute if score $t1 set_lmt.temp matches 0 run scoreboard players set $t1 set_lmt.temp 2
execute if score $t1 set_lmt.temp matches 3 if score $t0 set_lmt.temp matches 0.. run data remove storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2]
execute if score $t1 set_lmt.temp matches 2 if score $t0 set_lmt.temp matches ..-1 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append value []

scoreboard players operation $t0 set_lmt.temp += $t0 set_lmt.temp
execute store result score $t1 set_lmt.temp if data storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][]
execute if score $t1 set_lmt.temp matches 0 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append from storage set_lmt:lib/lmt branch[]
execute if score $t1 set_lmt.temp matches 0 run scoreboard players set $t1 set_lmt.temp 2
execute if score $t1 set_lmt.temp matches 3 if score $t0 set_lmt.temp matches 0.. run data remove storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2]
execute if score $t1 set_lmt.temp matches 2 if score $t0 set_lmt.temp matches ..-1 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append value []

scoreboard players operation $t0 set_lmt.temp += $t0 set_lmt.temp
execute store result score $t1 set_lmt.temp if data storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][]
execute if score $t1 set_lmt.temp matches 0 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append from storage set_lmt:lib/lmt branch[]
execute if score $t1 set_lmt.temp matches 0 run scoreboard players set $t1 set_lmt.temp 2
execute if score $t1 set_lmt.temp matches 3 if score $t0 set_lmt.temp matches 0.. run data remove storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2]
execute if score $t1 set_lmt.temp matches 2 if score $t0 set_lmt.temp matches ..-1 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append value []

scoreboard players operation $t0 set_lmt.temp += $t0 set_lmt.temp
execute store result score $t1 set_lmt.temp if data storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][]
execute if score $t1 set_lmt.temp matches 0 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append from storage set_lmt:lib/lmt branch[]
execute if score $t1 set_lmt.temp matches 0 run scoreboard players set $t1 set_lmt.temp 2
execute if score $t1 set_lmt.temp matches 3 if score $t0 set_lmt.temp matches 0.. run data remove storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2]
execute if score $t1 set_lmt.temp matches 2 if score $t0 set_lmt.temp matches ..-1 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append value []

scoreboard players operation $t0 set_lmt.temp += $t0 set_lmt.temp
execute store result score $t1 set_lmt.temp if data storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][]
execute if score $t1 set_lmt.temp matches 0 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append from storage set_lmt:lib/lmt branch[]
execute if score $t1 set_lmt.temp matches 0 run scoreboard players set $t1 set_lmt.temp 2
execute if score $t1 set_lmt.temp matches 3 if score $t0 set_lmt.temp matches 0.. run data remove storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][2]
execute if score $t1 set_lmt.temp matches 2 if score $t0 set_lmt.temp matches ..-1 run data modify storage set_lmt.__temp__:lib/lmt __io__.lmt._[-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2][-2] append value []
