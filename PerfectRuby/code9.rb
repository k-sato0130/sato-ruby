##PROC
proc = Proc.new{|a| p a}
proc.call(2) #=> 2

proc2 = proc { |a| p a } #Kernelにあるprocメソッドを利用している。
proc2.call(3) #=> 3

def method1
  yield
end
proc3 = proc {p 4}
method1(&proc3) #=> 4 #ブロックを受け取るメソッドにprocオブジェクトを渡すときには&を前につけてあげる。

lambda1 = lambda{ p 'ラムダです'} #Kernelにあるlambdaメソッドを利用している。
lambda1.call #=> 'ラムダです'

lambda2 = ->(x){ p x }
lambda2.call('ラムダです') #=> 'ラムダです'

##Rubyにおけるクロージャ
# 引数以外にも関数定義時のコンテキストに含まれる変数などの情報を持つ関数オブジェクトのことをクロージャと呼ぶ。
def closure
  str = 'closure means 閉鎖 in JP'
  Proc.new{ str }
end

proc_obj = closure
p closure.call #=> "closure means 閉鎖 in JP"
p proc_obj.call #=> "closure means 閉鎖 in JP"


## METHODクラス
def method1(arg)
  "#{arg}"
end

obj = method(:method1)
p obj.call('HELLO') #=> "HELLO"
p obj.class #=> Method
