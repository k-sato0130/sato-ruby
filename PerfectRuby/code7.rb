module Module1
  def hello
    puts 'Hello from Module1'
  end
end

module Module2
  def hello
    puts 'Hello from Module2'
  end
end

module Module3
  def hello
    puts 'Hello from Module3'
  end
end

class Class1
  def hello
    puts 'Hello from Class1'
  end
end

obj1 = Class1.new

def obj1.hello
  puts 'Hello From Singleton'
end


obj1.hello #=> Hello From Singleton


class Class2 < Class1
  prepend Module3
  include Module1
  include Module2

  def hello
    puts 'Hello from Class2'
  end
end

obj2 = Class2.new
obj2.hello #=> Hello from Module3
p Class2.ancestors #=> [Module3, Class2, Module2, Module1, Class1, Object, Kernel, BasicObject]
