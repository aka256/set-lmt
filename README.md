# set-lmt

List-Mapped Trieを利用した集合を追加するData Pack。

## 特徴

- 重複のない集合をMinecraftで使用できる
- (様々な型に対応した集合を自作できる)

## 機能

```mcfunction
# 初期化
  data modify storage set_lmt.__temp__:set_3d-vec __io__.lmt set from storage set_lmt:lib/lmt init_obj

# 挿入:[0, 0, 0]
  data modify storage set_lmt.__temp__:set_3d-vec __io__.data set value [0, 0, 0]
  function set_lmt:set_3d-vec/insert

# 挿入:[1, 1, 1]
  data modify storage set_lmt.__temp__:set_3d-vec __io__.data set value [1, 1, 1]
  function set_lmt:set_3d-vec/insert

# 要素の検索: [0, 0, 0]
  data modify storage set_lmt.__temp__:set_3d-vec __io__.data set value [0, 0, 0]
  function set_lmt:set_3d-vec/is_element
  tellraw @a [{"nbt":"__io__.data","storage": "set_lmt.__temp__:set_3d-vec"}," is element: ",{"nbt":"__io__.is_element","storage": "set_lmt.__temp__:set_3d-vec"}]
  # => [0,0,0] is element: 1b

# 削除:[0, 0, 0]
  data modify storage set_lmt.__temp__:set_3d-vec __io__.data set value [0, 0, 0]
  function set_lmt:set_3d-vec/delete

# 要素の検索: [0, 0, 0]
  data modify storage set_lmt.__temp__:set_3d-vec __io__.data set value [0, 0, 0]
  function set_lmt:set_3d-vec/is_element
  tellraw @a [{"nbt":"__io__.data","storage": "set_lmt.__temp__:set_3d-vec"}," is element: ",{"nbt":"__io__.is_element","storage": "set_lmt.__temp__:set_3d-vec"}]
  # => [0,0,0] is element: 0b
```

## 使用できる型

|型|function|例|説明|
|:-:|:-:|:-:|-|
|`int`|`set_lmt:set_int/`|-2147483648 ~ 2147483647|`score`や`TAG_Int`などの32bit整数|
|`2d-vec`|`set_lmt:set_2d-vec/`|[0, 0]、[2147483647, 2147483647]|2次元ベクトル|
|`3d-vec`|`set_lmt:set_3d-vec/`|[0, 0, 0]、[-1, -1, -1]|3次元ベクトル|
|`coordinates`|`set_lmt:set_coordinates/`|[0, 0, 0]、[-100, 64, 2]|Minecraft内の座標用にチューンしたもの|

## 操作

各functionの引数、返り値はstorageにて行う。なお、ここでは仮に`int`型の集合を用いることとする。他の型を使用する場合は`int`の部分を`3d-vec`などに置き換えればよい。

### 初期化

storageの`set_lmt:lib/lmt init_obj`から、集合を保持するためのLMTの初期値をコピーする。

```mcfunction
data modify storage hoge: lmt set from storage set_lmt:lib/lmt init_obj
```

### `insert`

値を集合に挿入する。重複する場合は挿入を行わない。

#### 引数

- `set_lmt.__temp__:set_int __io__.lmt` (lmt object): 値の挿入を行う対象となるLMT
- `set_lmt.__temp__:set_int __io__.data` (any): 挿入する値

#### 返り値

- `set_lmt.__temp__:set_int __io__.lmt` (lmt object): 値の挿入が行われたLMT
- (`set_lmt.__temp__:set_int __io__.is_element` (byte): `is_element`と同様の動作を行う)

```mcfunction
# 引数の設定
  data modify storage set_lmt.__temp__:set_int __io__.lmt set from storage hoge: lmt
  data modify storage set_lmt.__temp__:set_int __io__.data set value 1
# insertの実行
  function set_lmt:set_int/insert
# 返り値の取得
  data modify storage hoge: lmt set from storage set_lmt.__temp__:set_int __io__.lmt
```

### `is_element`

集合にある要素が含まれているか検索する。

#### 引数

- `set_lmt.__temp__:set_int __io__.lmt` (lmt object): 対象となるLMT
- `set_lmt.__temp__:set_int __io__.data` (any): 検索する値

#### 返り値

- `set_lmt.__temp__:set_int __io__.is_element` (byte): 集合に検索した値が含まれているか否か

```mcfunction
# 引数の設定
  data modify storage set_lmt.__temp__:set_int __io__.lmt set from storage hoge: lmt
  data modify storage set_lmt.__temp__:set_int __io__.data set value 1
# is_elementの実行
  function set_lmt:set_int/is_element
# 返り値の取得
  data get storage set_lmt.__temp__:set_int __io__.is_element
  # => 0bで__io__.dataが含まれない
  #    1bで__io__.dataが含まれる
```

### `delete`

値を集合から削除する。

#### 引数

- `set_lmt.__temp__:set_int __io__.lmt` (lmt object): 値の削除を行う対象となるLMT
- `set_lmt.__temp__:set_int __io__.data` (any): 削除する値

#### 返り値

- `set_lmt.__temp__:set_int __io__.lmt` (lmt object): 値の削除が行われたLMT

```mcfunction
# 引数の設定
  data modify storage set_lmt.__temp__:set_int __io__.lmt set from storage hoge: lmt
  data modify storage set_lmt.__temp__:set_int __io__.data set value 1
# deleteの実行
  function set_lmt:set_int/delete
# 返り値の取得
  data modify storage hoge: lmt set from storage set_lmt.__temp__:set_int __io__.lmt
```
