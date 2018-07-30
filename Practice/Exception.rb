### 例外処理

##例外処理の発生
#**p raise(ArgumentError, "引数が不正です。") #=> (ArgumentError)`<main>': 引数が不正です
#**p err = ArgumentError.new('引数が不正です') #=> #<ArgumentError: 引数が不正です>
begin
  p 1 #例外は発生しないので表示される。
rescue
  p 0 #例外は発生しないので表示されない。
else
  p 2 #例外は発生しないので表示される。
ensure
  p 3 #例外の有無に関わらず表示される。
end
#=> 1 2 3

##自分で例外を発生させる。
myerorr = Exception.new('errrrr')
