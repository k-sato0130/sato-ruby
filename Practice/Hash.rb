## Hashの書式種類
p h = { 'Name' => 'Katuki', 'Age' => 23 } #=> {"Name"=>"Katuki", "Age"=>23}
p h2 = { :Name => 'Katsuki', :Age => 23 } #=> {:Name=>"Katsuki", :Age=>23}
p h3 = { Name: "Katsuki", Age: 23} #=> {:Name=>"Katsuki", :Age=>23}

## Hashの生成方法
p h4 = Hash.new(6) #=> {}
p h4[:key] #=> 6
p h5 = Hash[:key1, 1, :key2, 2 ] #=> {:key1=>1, :key2=>2}

##後置のwhile
i = 0
begin
  p i
  i += 1
end while(0..4) === i #=> 0 1 2 3 4
### Hash Class

## キーや値を取得する
hash1 = {"apple" => "Fruit", "coffee" => "Drink"}
p hash1.keys #=> ["apple", "coffee"]
p hash1.values #=> ["Fruit", "Drink"]

## Hashを変更する
hash2 = {"katsuki" => "Name", "Gunma" => "Prefecture"}
p hash1.shift #=>["apple", "Fruit"] #先頭のキーと値の組合せを１つ取り除き、配列として返す。
p hash2.merge(hash1) #=>{"katsuki"=>"Name", "Gunma"=>"Prefecture", "coffee"=>"Drink"}

## Hashを調べる
p hash2.key?("katsuki") #=> true
p hash2.value?('Prefecture') #=> true

## Hashを使った繰り返し
hash2.each_key { |key| puts "#{key}" } #=> katsuki Gunma
hash2.each_value { |value| puts "#{value}"} #=> Name Prefecture
