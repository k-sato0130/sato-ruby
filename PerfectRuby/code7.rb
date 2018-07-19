module Module1
  def hello
    'Hello from Module1'
  end
end

module Module2
  def hello
    'Hello from Module2'
  end
end

module Module3
  def hello
    'Hello from Module3'
  end
end

class Class1
  def hello
    'Hello from Class1'
  end
end

class Class2 < Class1
  include Module1
end

class Class3 < Class2
  include Module1
  include Module2
  include Module3
end

class Class4 < Class3
  prepend Module3
end

obj = Class1.new
obj2 = Class2.new
obj3 = Class3.new
obj4 = Class4.new

def obj.hello
  'Hello from Singleton'
end

p obj.hello #=> "Hello from Singleton" #特異クラスで定義されたメソッドが優先される。
p obj2.hello #=> "Hello from Module1"
p obj3.hello #=> "Hello from Module2"
p obj4.hello #=> "Hello from Module3"


p Class1.ancestors #=> [Class1, Object, Kernel, BasicObject]
p Class2.ancestors #=> [Class2, Module1, Class1, Object, Kernel, BasicObject]
p Class3.ancestors #=> [Class3, Module3, Module2, Class2, Module1, Class1, Object, Kernel, BasicObject]
p Class4.ancestors #=> [Module3, Class4, Class3, Module2, Class2, Module1, Class1, Object, Kernel, BasicObject]
