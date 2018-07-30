#Equality/Identity Matchers
#オブジェクトのバリューが等しいか調べるマッチャー
describe 'An example of the equality Matchers' do
  it 'should show how the equality Matchers work' do
    a = 'test string'
    b = a
    expect(a).to eq 'test string'#「==」と同じ
    expect(a).to eql 'test string'#eql?と同じ
    expect(a).to be(b)#「equal?」と同じ
    expect(a).to equal(b)#「equal?」と同じ
  end
end

#Comparison Matchers
describe 'An example of the comparison Matchers' do
  it 'should show how the comparison Matchers work' do
    a = 1
    b = 2
    c = 3
    d = 'test string'

    expect(b).to be > a
    expect(a).to be >= a
    expect(a).to be < b
    expect(b).to be <= b
    expect(c).to be_between(1, 3).inclusive #(min, max)の中である事を期待する。
    expect(d).to match /TEST/i #正規表現とマッチする事を期待する。
  end
end

#Class/Type Matchers
describe 'An example of the type/class Matchers' do
  it 'should show how the type/class Matchers work' do
    x = 1
    y = 3.14
    z = 'test string'

    expect(x).to be_instance_of(Integer) #渡されたオブジェクトが特定のクラスのインスタンスであるかどうかのテスト。
    expect(y).to be_kind_of(Numeric) #渡されたオブジェクトが特定のクラスのインスタンスであるかどうかのテスト。
    expect(z).to respond_to(:length) #渡されたオブジェクトが特定のメソッドを実行可能かどうかのテスト。
  end
end

#True/False/Nil Matchers
describe 'An example of the true/false/nil Matchers' do
  it 'should show how the true/false/nil Matchers work' do
    x = true
    y = false
    z = nil
    a = 'test string'

    expect(x).to be(true)
    expect(y).to be(false)
    expect(a).to be_truthy
    expect(z).to be_falsey
    expect(z).to be_nil
  end
end
