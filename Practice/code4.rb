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
