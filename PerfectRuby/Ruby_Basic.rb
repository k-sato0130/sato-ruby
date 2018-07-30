# Rubyでは全てがオブジェクト
p true.class #=> TrueClass
p true.class.superclass #=> object
p true.class.ancestors #=> [TrueClass, Object, Kernel, BasicObject]
p nil.class #=> NilClass

##self
class Obj
  class << self
    def display_class
      puts self
    end
  end

  def display_yourself
    puts self #メソッド内ではそのメソッドが属しているインスタンスをselfという名前の擬似変数で参照できます。
  end
end

Obj.display_class #=> Obj
obj = Obj.new.display_yourself #=>#<Obj:0x00007f9a30833d18>

##super
class Obj2 < Obj
  def display_yourself
    puts  super #superを呼び出すとスーパークラスに定義されている同じz名前のメソッドを呼び出すことができる。
    puts  self
  end
end
obj2 = Obj.new.display_yourself #=>#<Obj:0x00007fe615811570>#<Obj:0x00007fe615811570>

#クラスの継承
p Obj.superclass #=> Object
p Obj2.superclass #=> Obj
p Obj.ancestors #=> [Obj, Object, Kernel, BasicObject]
p Obj2.ancestors #=> [Obj2, Obj, Object, Kernel, BasicObject]

##モジュール
#モジュール定義の中には別のモジュールやクラスの定義を記述できるので、名前空間として利用できる。
#ネストしたクラスやモジュールは「::」を用いて参照することができる。
module Module1
  class Obj
    class << self
      def hello
        puts 'Hello'
      end
    end

    def hello
      puts 'Hello from an instance'
    end
  end
end

Module1::Obj.hello #=> Hello
obj = Module1::Obj.new.hello #=> Hello from an instance
Obj.hello #=> code2.rb:15:in `<main>': uninitialized constant Obj (NameError)
