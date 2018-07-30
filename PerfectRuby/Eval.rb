##「eval」族
eval 'p self' #=> main
obj = Object.new
obj.instance_eval { p self } #=> #<Object:0x00007fe3c4934c70>
obj.class.class_eval { p self } #=> Object
Kernel.module_eval { p self } #=> Kernel

##「Kernel#eval」
#引数に渡された文字列をプログラムとして実行する。
p eval("1+1") #=> 2
