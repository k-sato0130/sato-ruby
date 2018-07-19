##演算子
a, b ,c = true, true, false

p a or b && c #=> true
p (a or b) && c #=> false #=> 優先順位を明示したい場合には式を括弧で括ります。

##三項演算子
arg = 1
puts arg == 1 ? 'True' : 'False' #=> True


##case式
arg = 'ruby'

case arg
when 'Gold'
  puts 'You are Gold'
when 'Silver'
  puts 'You are Silver'
when 'ruby'
  puts 'You are ruby'
end
#=> You are ruby
#=> 比較演算に === を用いることによって実現されています。
#=> 上記例の最初の when 節では 「/ruby/ === stone」のような比較が行われます。

## 「===」メソッドのオブジェクトごとの動作の違い
# Range
# 引数が自身の範囲内に含まれるなら真を返す
# Regexp
# 引数の文字列がマッチした場合は真を返す
# Proc
# 右辺を引数にして手続オブジェクトを実行した結果を返す
# Module、Class
# 引数が自身または自身のサブクラスのインスタンスであれば真を返す
#
