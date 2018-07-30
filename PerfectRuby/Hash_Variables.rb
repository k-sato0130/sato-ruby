##Hashの書き方
hash1 = {'red' => 'ff000', 'green' => '00ff00'}
hash2 = {:red => 'ff00', :green => '00ff00'}
hash3 = {red: 'ff00', green: '00ff00'}

p hash1 #=> {"red"=>"ff000", "green"=>"00ff00"}
p hash2 #=> {:red=>"ff00", :green=>"00ff00"}
p hash3 #=> {:red=>"ff00", :green=>"00ff00"}

##様々な代入方法
a, b = 1, 2
p a #=> 1
p b #=> 2

a, b = [1, 2, 3]
p a #=> 1
p b #=> 2

a, *b = [1, 2, 3]
p a #=> 1
p b #=> [2,3]

a, b, c = [1, 2]
p a #=> 1
p b #=> 2
p c #=> nil

##配列の展開
#実引数の頭に「*」をつけると配列を複数の引数として渡すことができます。
def hello(arg1, arg2)
  puts "#{arg1} #{arg2}"
end

arry = ['STRING1', 'STRING2']
hello(*arry) #=> STRING1 STRING2

p Time::now
p Time.now
