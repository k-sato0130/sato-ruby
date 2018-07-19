### Numeric Class

## 数値の切り捨て・切り上げ
p 1.9.ceil #=> 2 #大きい方の整数に丸める。
p -1.1.ceil #=> -1
p 1.9.floor #=> 1 #小さい方の整数に丸める。
p -1.1.floor #=> -2
p 1.9.round #=> 2 #絶対値を四捨五入
p 1.9.truncate #=> 1 #０に近い方の整数に丸める。
p -2.abs #=> 2 #絶対値を返す。

## 前後の整数を求める。
p 10.next #=> 11
p 10.succ #=> 11
p 10.pred #=> 9

## 数値の余剰
p 10.modulo(3) #=> 1
p 10 % 3 #=> 1
p 10 % 4 #=> 2

## ビット演算
p 10 | 3 #=> 11

## 少数を使った繰り返し　
1.5.step(21.5, 2.5){ |f| puts f}

## Rationalクラス
p a = Rational(1, 2) #=> (1/2)
p a.denominator #=> 2 #分母を表示する。
p a.numerator #=> 1 #分子を表示する。
