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
