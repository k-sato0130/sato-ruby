require '../Practice/CodeForTest.rb'
##rspecはデフォルトでは拡張子前が'spec'となっているファイルのみを読み込む。
describe StringAnalyzer do
#describeは'Example Group'を表すのに使用される。
#'Example Group'はテストの塊のようなもの。(describeはストリングかクラス名を後にとる。また、その後にブロックを渡さなければならない。)
  context 'With valid input' do
    #'describe'のaliasでクラス名やストリングを後にとり、こちらもブロックを渡してあげる。
    #'context'はexampleのグループをcontextによって分類する際に使用される（使用は絶対に必要ではない）
    it 'should detect when a string contains valwels' do
      #itは１つのexampleをまとめたもの。（it do ~ end )が１つのテストケース。
      obj = StringAnalyzer.new
      test_string = 'uuu'
      expect(obj.has_vowels?(test_string)).to be(true)
    end

    it 'should detectwhen a string does not contain vowels' do
      obj = StringAnalyzer.new
      test_string = 'bbb'
      expect(obj.has_vowels?(test_string)).to be(false)
    end
  end
end
