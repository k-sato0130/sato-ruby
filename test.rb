def proc_count
  ObjectSpace.each_object(Proc).count
end

def b(&block)
  block.call 1
  proc_count
end

def y
  yield 1
  proc_count
end

puts "&block"
5.times do
  p b{ |x| x + 1 }
end

puts "yield"
5.times do
  p y{ |x| x + 1 }
end
p ObjectSpace.count_objects
