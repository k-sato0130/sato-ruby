#テストは環境に左右されないようにしなければならない。
#テストの実行回数とうとうに左右されるのは良くない。
#よって１つ１つのテストは独立していた方が良い。
#Rspecは「before」「after」が有名なhooksである。
class SimpleClass
  attr_accessor :message

  def initialize()
    puts 'Creating a new instance of the simple class'
    @message = 'howdy'
  end

  def update_message(new_message)
    @message = new_message
  end
end

describe SimpleClass do
  before(:each) do #テスト開始前にオブジェクトを作成する。
    #.Creating a new instance of the simple class
    #上記の分がコンソール上で２度映し出されている。これはitの数だけbefore(:each)実行されていることを示している。
    @simple_class = SimpleClass.new
  end

  before(:all) do
    #全てのテストケース(it)の前に１度だけ実行される。
    puts "Runs before all Examples"
 end

  after(:each) do #一つ一つのテスト(it)が終わるたびに実行される。
     puts "Runs after each Example"
  end

  after(:all) do
     puts "Runs after all Examples"
  end

  it 'should have an initial message' do
    expect(@simple_class).to_not be_nil
    @simple_class.message = 'something else'
  end

  it 'should be able to change its message' do
    @simple_class.update_message('a new message')
    expect(@simple_class).to_not be('howdy')
  end
end
