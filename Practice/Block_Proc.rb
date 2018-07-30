### ブロックとProc
## ブロックの使用例
def func(x)
  x + yield
end
p func(1){2} #=> 3 #ブロックの実行結果(yield)と引数を足しているので結果は３となる。

## ブロックの引数の指定
def func2(a, b)
  a + yield(b, 3)
end
p func2(1, 2){|x, y| x + y } #=> 6

## クロージャとしてのブロック
def func3(x)
  x + yield
end
y = 2
p func3(1){ y += 2 } #=> 5
p y #=> 4 #Rubyではメソッドの内部から外部の変数を参照できないのでこれによって呼び出し元の変数(x)を処理に持ち込むことができる。

## ブロックの判定
def func4
  if block_given?
    return 1
  else #メソッド内でブロックが指定されている場合には１を返し、それ以外は２を返す。
    2
  end
end
p func4(){2} #=> 1 #ブロックが渡されているから。
p func4() #=> 2 #ブロックが渡されていないから。

## Procの基本
proc1 = Proc.new{ |x| p x } #ブロックを１つのオブジェクトとして扱いたい場面に用いる。
proc1.call(1) #=> 1 #Procを呼び出す際にはcallを用いる.

## ブロックへの変換
def func5(x)
  x + yield
end
proc2 = Proc.new{ 2 }
p func5(3, &proc2) #=> 5 #&を用いることで引数としてProc（ブロック）を参照可能。

## Procへの変換
def func6(x, &proc)
  x + proc.call
end
p func(1){ 2 } #=> 3 #&がメソッドの引数に取られていた際には反映する。
