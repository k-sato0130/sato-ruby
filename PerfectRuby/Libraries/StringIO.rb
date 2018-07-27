require 'stringio'

sio = StringIO.new
p sio #=> #<StringIO:0x00007fa6f194c8f8>
p sio.puts 'HELLO' #=> nil
p sio.string #=> "HELLO\n"
sio.rewind
p sio.getc #=> "H"

sio.string = 'Hello World' #再代入
p sio.gets #=> "Hello World"
p sio.getc #=> nil
sio.rewind
p sio.readlines #=> ["Hello World"]
