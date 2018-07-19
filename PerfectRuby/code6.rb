###メタプログラミング

##無名クラス
arg = Class.new
p arg.name #=> nil #無名クラス
p obj = arg.new #=>#<#<Class:0x00007fa4b9850600>:0x00007fa4b98502b8> #無名クラスもオブジェクトの作成が可能
ClassZero = arg #無名クラスに名前を付ける。
p arg.name #=> "ClassZero"

##クラスの継承
class FirstClass
  @class_instance_val = 'クラスインスタンス変数'
  @@class_val = "クラス変数"
  p self #=> FirstClass
  def display
    p self
  end
  class << self ##クラスメソッド
    def class_ins_val
      p  @class_instance_val
    end
  end
  def vals
    p @class_ins_val #=> nil #クラスインスタント変数ではなく通常のインスタント変数にアクセスしようとする。
    p @@class_val #=> "クラス変数"
  end
end

class SecondClass < FirstClass
end

p FirstClass.name #=> "FirstClass"
p Class.ancestors #=> [Class, Module, Object, Kernel, BasicObject]
p FirstClass.ancestors #=> [FirstClass, Object, Kernel, BasicObject]
p SecondClass.superclass #=> FirstClass
FirstClass.new.display #=> #<FirstClass:0x00007fb79810d9f0> 生成されたオブジェクト
FirstClass.class_ins_val #=> "クラスインスタンス変数"
FirstClass.new.vals

##特異クラス
class OriginalClass
end

obj = OriginalClass.new

def obj.singleton_method
  puts '特異メソッド'
end

p obj.singleton_class.method_defined?(:singleton_method) #=> true
p obj.singleton_class #=> #<Class:#<OriginalClass:0x00007fd47700cb40>>
p obj.singleton_class.superclass #=> OriginalClass
p obj.instance_of?(obj.singleton_class) #=> false
p obj.instance_of?(OriginalClass) #=> true
