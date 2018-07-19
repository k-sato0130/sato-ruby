class Obj
  def hello
    puts 'Hello'
  end
  def good_morning
    puts 'Good Morning'
  end

  def func
    good_morning
  end

  private :good_morning
  public :hello
end
obj = Obj.new.hello  #=> Hello
obj3 = Obj.new.func #=> Good Morning

def obj3.singleton_method
  puts 'singleTOn'
end
obj3.singleton_method #=> singleTOn

##ネストした定数の参照
CONST = 'TopLevel'

class Class1
  CONST = 'In Class1'

  def self.const
    p CONST
  end
end

Class1.const #=>"In Class1"
p ::CONST #=> "TopLevel"
p Class1::CONST #=> #=>"In Class1"


##ネストした定数の参照2

CONS = 'TOP'

module Module1
  CONS = 'In Module1'
  module Module2
    CONS = 'In Module2'
    class Class2
      CONS = 'In Class2'
      def hello
        CONS
      end
    end
  end
end

p CONS #=>"TOP"
p ::CONS #=>"TOP"
p Module1::CONS #=> "In Module1"
p Module1::Module2::CONS #=> "In Module2"
p Module1::Module2::Class2::CONS #=> "In Class2"
p obj = Module1::Module2::Class2.new.hello #=> "In Class2"


##モジュールのMixin Extend
module Module3
  def greeting
    puts "Hello #{self.class}"
  end
end

module Module4
  def hello
    puts 'Hello'
  end
end

class Obj2
  include Module3 #モジュールのミックスイン
end
obj = Obj2.new.greeting #=> Hello Obj2
obj.extend Module4
obj.hello #=> Hello #モジュールをオブジェクトの特異メソッドとして取り込む。

##モジュール関数
#モジュール関数とは「privateなインスタンスメソッドであると同時に、モジュールの特異メソッドでもあるメソッドの事。
module Module1
  def hello(name)
    puts "Hello #{name}"
  end
  module_function :hello
end


Module1.hello('Ben') #=> Hello Ben

include Module1
hello("Doug")


class Obj
  include Module1
end
obj = Obj.new.hello('Matt')
