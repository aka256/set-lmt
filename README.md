# set-lmt

List-Mapped Trieを利用した集合`set_lmt`を追加するData Pack。

**なお集合内の要素を削除することがない場合は、このData Packを使う必要ない。**

## 特徴

- 重複のない集合をMinecraftで使用できる。
- 集合の要素数が増加しても要素の削除を行ったとき`TAG_List`を線形に利用したものよりも、パフォーマンスの低下が起きにくくなる。
- ハッシュテーブルとして利用しているLMTのサイズを指定できる。
- (様々な型に対応した集合を自作できる。)

## 機能

```mcfunction
# サイズを2^4として初期化
  data modify storage set_lmt.__temp__:set_3d-vec __io__.lmt set from storage set_lmt:lib/lmt init_obj.4

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

storageの`set_lmt:lib/lmt init_obj`から、集合を保持するためのLMTの初期値をコピーする。`init_obj`の後ろにLMTのタイプを指定する。(例だとLMTのサイズが16である4を指定している。)
<!-- サイズはおおよそset_lmtに入る要素数の3~4倍の値がベストではあるが必ずしもこれに従う必要はなく、サイズが大きいものを選択しても問題はない。 -->

```mcfunction
data modify storage hoge: lmt set from storage set_lmt:lib/lmt init_obj.4
```

|タイプ|サイズ|
|:-:|:-:|
|`init_obj.4`|16|
|`init_obj.8`|256|
|`init_obj.12`|4,096|
|`init_obj.16`|65,536|
|`init_obj.24`|16,777,216|
|`init_obj.32`|4,294,967,296|

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

- `set_lmt.__temp__:set_int __io__.is_element` (bool): 集合に検索した値が含まれているか否か

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

## LMTのサイズの目安

要素のハッシュ関数が均一に存在すると仮定したとき、実行コマンド数の観点からベストなLMTのサイズを示す。

|タイプ|LMTのサイズ|目安となる要素数|
|:-:|:-:|:-:|
|(`set_list`)|1|0 ~ 5|
|`init_obj.4`|16|6 ~ 58|
|`init_obj.8`|256|59 ~ 938|
|`init_obj.12`|4,096|939 ~ 15,018|
|`init_obj.16`|65,536|15,019 ~ 415,061|
|`init_obj.24`|16,777,216|415,062 ~ 102,527,431|
|`init_obj.32`|4,294,967,296|102,527,431 ~ |

## 実装

この`set_lmt`はLMTをハッシュテーブルとした、オープンハッシュなHashSetとなっている。

## 計算量

`set_lmt`を用いた時と`TAG_List`を線形に利用した集合である`set_list`を用いた時の計算量の比較を以下に示す。

|操作|`set_lmt`|`set_list`|
|:-:|:-:|:-:|
|`insert`|$O(\log^2 n + k)$|$O(m)$|
|`is_element`|$O(\log^2 n + k)$|$O(m)$|
|`delete`|$O(\log^2 n + k)$|$O(m)$|

なお、$n$はLMTのサイズ、$k$はハッシュの衝突数、$m$はlist内の要素数をそれぞれ表している。

<details>
<summary>実行コマンド数による比較</summary>

LMTの中に要素が均一に配置されていると仮定した場合で、ある操作を行ったときのコマンド数を示している。`delete`に関しては$n$の数だけ`set_lmt`内に保存してある状態での比較となっている。また、$k$はLMTで`touch`した先に存在する要素数を表している。

|bit|size|touch|insert|is_element|delete|delete (n=1)|delete (n=10)|delete (n=100)|delete (n=1000)|delete (n=10000)|delete (n=100000)|
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
|32|4,294,967,296|202|212|210|209+9k|218|218|218|218|218|218|
|24|16,777,216|156|166|164|163+9k|172|172|172|172|172|172|
|16|65,536|108|118|116|115+9k|124|124|124|124|124|**133**|
|12|4,096|84|94|92|91+9k|100|100|100|**100**|**118**|316|
|8|256|60|70|68|67+9k|76|76|**76**|103|427|3,586|
|4|16|36|46|44|43+9k|52|**52**|106|610|5,668|56,923|
|0|1|-|6|4|3+9k|**12**|93|903|9,003|90,003|900,003|

`delete`を用いないのであれば、`set_list`に当たるbit=0がベストであることが分かる。反対に`delete`を用いるのであれば、使用する要素数に応じて予めLMTのサイズを指定するべきであることも分かる。

</details>

## 謝辞

このData Packでは[intsuc](https://twitter.com/intsuc)氏の[サイズ2³²/2分/遅延 list-mapped trie](https://twitter.com/intsuc/status/1442104841585582083)を利用させていただきました。
