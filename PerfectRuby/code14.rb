module Module2
end

module NameSpace
    p Module.nesting #=> [NameSpace]
  class Class1
    p Module.nesting #=> [NameSpace::Class1, NameSpace]
    #ネストが浅い方から深い方への配列が返る。
    include Module2
    @@class_var = :cv
    @@class_var2 = :cv2
    CONST = "constant"

    class << self
      def method1(arg); p arg end
    end

    private
    def method2; end

    protected
    def method3; end

    module Module1
      p Module.nesting #=> [NameSpace::Class1::Module1, NameSpace::Class1, NameSpace]
      def method1; end
    end
  end
end
p NameSpace::Class1.class_variables #=> [:@@class_var, :@@class_var2]
p NameSpace::Class1.class_variable_defined?(:@@class_var) #=> true
p NameSpace::Class1.class_variable_get(:@@class_var) #=> :cv
p NameSpace::Class1.class_variable_set(:@@c, 'class variable') #=> "class variable"
p NameSpace::Class1.constants #=> [:CONST, :Module1]
p NameSpace::Class1.const_get(:CONST) #=> "constant"
p NameSpace::Class1.const_set(:CONST2, 'constant2') #=> "constant2"
p NameSpace::Class1.ancestors #=> [Class1, Object, Kernel, BasicObject]
p NameSpace::Class1.included_modules #=> [Module2, Kernel]
p NameSpace::Class1.superclass #=> Object
p Module.nesting #=> []
