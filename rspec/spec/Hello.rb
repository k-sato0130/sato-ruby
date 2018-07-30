class Hello
  def say_hello
    'Hello World'
  end
end

describe Hello do
  context 'When testing the Hello class' do
    it 'should say Hello when we call the say_helo method' do
      obj = Hello.new
      message = obj.say_hello
      expect(message).to eq('Hello World')
    end
  end
end
