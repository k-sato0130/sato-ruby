### String Class
  #文字列はアスキーコードで比較し、結果をtrueまたはfalseで返す。

## 文字列の比較
p "abc" == "abc" #=> true
p "abc" == "ABC" #=> false
p "a" < "b" #=> ture
p "A" < "a" #=> false
p "aa" > "b" #=> false
p "a" <=> "b" #=> -1

## 文字列の切り出し
a = 'abcdefg'
p a["bc"] #=> "bc"
p a.slice("bc")  #=> "bc"
p a[/bc/]  #=> "bc"
p a.slice(/bc/)  #=> "bc"

## 文字列の変更
a[1..3] = 'xyz'
p a #=> "axyzefg"

## 文字列の置き換え
b = 'abcdefg-abcdefg'
c = 'aabbccddeeffgg'
p b.sub(/abc/){ |str| 'xyz' } #=> "xyzdefg-abcdefg"
p c.tr('a-c','A-C') #=> "AABBCCddeeffgg" #指定したパターンに含まれる文字を検索し、それを特定の文字列やパターンに合わせて置き換える。
p c.tr_s('a-c','A-C') #=> "ABCddeeffgg" #tr_sの場合は重複する値がある際には１文字に圧縮する。
p c.squeeze('a-e') #=> "abcdeffgg"
p c.delete('a-f') #=> "gg"

#文字列の末尾や先頭にある空白や改行を削除する
str = "aaa\n"
p str.strip #=> "aaa" #文字前後の空白を削除する。

#文字列の割り付け
str2 = 'abc'
p str2.center(10) #=> "   abc    "
p str2.ljust(10,'-') #=> "abc-------"
p str2.rjust(10,'.') #=> ".......abc"
