###Regxp　Proc
## 正規表現のオブジェクトを生成
reg = /ruby/i #大文字小文字を無視する。
reg2 = /a/mi #開業にもマッチするようになる。
p reg.class #=> Regexp

## 特殊文字をエスケープする。
p reg3 = Regexp.new("a¥¥[b¥¥]c") #=> /a¥¥[b¥¥]c/
p reg4 = Regexp.escape("a[b]c") #=> "a\\[b\\]c"
p reg5 = /\.a/
p reg5 =~ ".a" #=> 0

## マッチした結果を取得する。
/(abcd)/ =~ "abcdefghijklmonopqrstuvwxyz"
p Regexp.last_match #=> #<MatchData "abcd">
p $& #=> "abcd" #マッチした内容を表示する。
p $1 #=> "abcd"

## Procクラス
p1 = Proc.new { puts 'ok' }
p2 = Proc.new { |str| puts str }
p1.call#=> ok
p2.call('String') #=> String

##ブロック付きのメソッドの引数として利用する。
p3 = Proc.new { |n| puts n }
3.times(&p3) #=> 0 1 2

##手続きオブジェクトの中での処理の中断
p4 = Proc.new {
  next 'next'
  'last'
}
p p4.call #=> "next" #ブロック内で処理を中断して呼び出し元へ値を戻すにはbreakやeturnではなくnextを用いる。

p String.instance_methods
