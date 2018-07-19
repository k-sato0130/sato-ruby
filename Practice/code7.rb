### lambdaとthread

## lambdaの基本
  #以下の２つの用に作成されたProcをlambdaと呼び、メソッドに近い働きをする。
  lmd = lambda{ |x| p x }
  lmd = ->(x){ p x }

## ProcとLambdaのreturnの違い
  # Procの例
  def func
    proc = Proc.new{ return 1 }
    proc.call
    2 #これは実行されない
  end
  p func() #=> 1
  # Lambdaの例
  def func2
    lmd = lambda{ return 1 }
    lmd.call
    2 #実行される
  end
  p func2() #=> 2

## ProcとLambdaの引数の受け方の違い
  # Procの例
  p1 = Proc.new{ |x, y| y }
  p p1.call(2) #=> nil
  # Lambdaの例
  l1 = lambda{ |x, y| y }
  #** l1.call(2) #=> (ArgumentError)wrong number of arguments (given 1, expected 2)

## スレッド
# Threadクラスをインスタンス化し、新しいスレッドを作成し、joinメソッドでスレッドの終了を待つことができる。

##スレッドの例
t1 = Thread.new do
  p "start"
  sleep 5
  p "end"
end
p "wait"
t1.join #=> "wait" "start"   "end"

## ファイバ
# スレッドと同様に複数のタスクを切り替え、並行処理をするための機能。
# スレッドと異なる点としてはスレッドは処理しているタスクの切り替えをOSや仮想マシンが行うのに対し、ファイバは開発者がプログラム内で明示的に明示する点。
##ファイバの例
f1 = Fiber.new do
(1..3).each do |i|
  Fiber.yield i
end
nil
end
p f1.resume #=> 1
p f1.resume #=> 2
