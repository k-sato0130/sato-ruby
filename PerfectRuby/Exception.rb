##例外処理

# 例外を発生させる「Karnel#raise」
# raise 'error' #=> code4.rb:1:in `<main>': error (RuntimeError)
# raise StandardError, 'ERORR YOU GOTTA FIX IT' #=> code4.rb:5:in `<main>': ERORR YOU GOTTA FIX IT (StandardError)

##例外補足
def hello
  puts 'Hello'
  raise(StandardError, 'Error')
end
#発生した例外はrescue節で補足することができる。
#rescueで「=> e」と変数を指定することで補足した例外オブジェクトが変数に入る。
begin
  hello
rescue => e
  puts "Error occured #{e.class}" #=> #=> Error occured StandardError
  puts "#{e.message}" #=> Error
  puts "#{e.backtrace}" #=> ["code4.rb:10:in `hello'", "code4.rb:15:in `<main>'"]
end

##複数の例外の補足
#１つのbegin..endに対して複数の例外処理が必要になる場合、rescue節を複数記述することができる。
#rescue節が複数ある場合には例外は最初にクラスがマッチしたrescue節で補足される。

begin
  hello
rescue LoadError => e
  puts "#{e.class}"
rescue StandardError => e
  puts "#{e.class}" #=> StandardError
end

##１つのrescue節に複数の例外を指定
begin
  hello
rescue NameError, StandardError => e
  puts "#{e.class}" #=> StandardError
end

##例外の有無にかかわらず実行する。
begin
  hello
rescue
  puts 'Error occured'
ensure
  puts "Error? No Error? Dosn't matter"
end


##大域脱出
#最も内側のループからの脱出には break を用います。一方、いくつもネストした処理から一気 に脱出して、大きな処理の流れを中断したい場合もあります。このような場合には大域脱出を用います。
catch :triple_loop do loop do
  puts 'one'
  loop do
    puts 'two'
      loop do
        puts 'three'
        throw :triple_loop end
      end
  end
end # "one" "two" "three" と順番に表示
