class Class1
  def initialize(ins1, ins2, ins3, ins4, ins5)
    @ins1 = ins1
    @ins2 = ins2
    @ins3 = ins3
    @ins4 = ins4
    @ins5 = ins5
  end

  def method1(arg); p arg end
  def method2; end
end

obj = Class1.new(1,2,3,4,5)
def obj.method3; end
p obj.instance_variables #=> [:@ins1, :@ins2, :@ins3, :@ins4, :@ins5]
p obj.instance_variable_get(:@ins1) #=> 1
p obj.instance_variable_set(:@ins2, 'new_var') #=> 'new_var'

p obj.methods #=> [:method1, :method2, :remove_instance_variable, :instance_of?, :kind_of?, :is_a?, :tap, :public_send, :public_method, :singleton_method, :instance_variable_defined?, :define_singleton_method, :method, :instance_variable_set, :extend, :to_enum, :enum_for, :<=>, :===, :=~, :!~, :eql?, :respond_to?, :freeze, :inspect, :object_id, :send, :display, :to_s, :nil?, :hash, :class, :singleton_class, :clone, :dup, :itself, :taint, :tainted?, :untaint, :untrust, :untrusted?, :trust, :frozen?, :methods, :singleton_methods, :protected_methods, :private_methods, :public_methods, :instance_variable_get, :instance_variables, :!, :==, :!=, :__send__, :equal?, :instance_eval, :instance_exec, :__id__]
p obj.private_methods #=> [:initialize, :DelegateClass, :sprintf, :format, :Integer, :Float, :String, :Array, :raise, :Hash, :global_variables, :__method__, :eval, :__dir__, :fail, :catch, :iterator?, :block_given?, :throw, :loop, :__callee__, :URI, :Rational, :trace_var, :untrace_var, :at_exit, :Complex, :set_trace_func, :gem, :select, :caller, :caller_locations, :`, :test, :fork, :exit, :sleep, :respond_to_missing?, :load, :exec, :exit!, :syscall, :open, :printf, :print, :putc, :puts, :readline, :readlines, :initialize_copy, :initialize_clone, :initialize_dup, :proc, :p, :gets, :spawn, :rand, :srand, :lambda, :system, :abort, :trap, :require, :require_relative, :autoload, :autoload?, :gem_original_require, :binding, :local_variables, :warn, :method_missing, :singleton_method_added, :singleton_method_removed, :singleton_method_undefined]
p obj.protected_methods #=> []
p obj.singleton_methods #=> [:method3]

p obj.respond_to?(:method1) #=> true
obj.send(:method1, 'YOYO') #=> "YOYO"
