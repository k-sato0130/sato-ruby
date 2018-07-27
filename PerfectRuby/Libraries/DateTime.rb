require 'date'
require 'rdoc'

p DateTime.new(2011, 7, 19) - DateTime.new(2011, 8,27) #=> (-39/1)
p Date.parse("2011-01-01") #=> #<Date: 2011-01-01 ((2455563j,0s,0n),+0s,2299161j)>
p Date.today #=> #<Date: 2018-07-27 ((2458327j,0s,0n),+0s,2299161j)>

start_from = Date.new(2017, 7, 1)
end_to = Date.new(2017, 7, 31)

start_from.step(end_to, 7) do |date|
  p date.to_s
end
#=>
#"2017-07-01"
# "2017-07-08"
# "2017-07-15"
# "2017-07-22"
# "2017-07-29"
p Date.today.leap? #=> false
p Date.today.to_s #=> "2018-07-27"
p DateTime.now #=> #<DateTime: 2018-07-27T15:30:52+09:00 ((2458327j,23452s,450071000n),+32400s,2299161j)>
