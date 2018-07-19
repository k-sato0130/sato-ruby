### String・シンボル・配列

## 文字列のencoding
a = "Ruby"
p a.encoding #=>'#<Encoding:UTF-8>
b = a.encode("SJIS")
p b.encoding #=>#<Encoding:Windows-31J>

## 文字列の比較
p 'a' < 'b' #=> true
p 'ab' < 'ac' #=> true
p 'ab' < 'ab' #=> false
p 'ab' == 'ab' #=> true
p 'ab' <=> 'ab' #=> 0
p 'a' <=> 'b' #=> -1

## シンボル
p sym1 = :'symbol' #=> :symbol
p sym2 = :"symbol" #=> :symbol
p sym3 = :symbol #=> :symbol
  # 文字列からシンボルに変える。
  p "string".to_sym #=> :string
    # 文字列とシンボルの違い＝（文字列は毎回新たにオブジェクトを生成するのでオブジェクトIDが変わる。
    # 一方でシンボルでは同じオブジェクトを参照するのでオブジェクトIDは変わらない。)
    p "string".object_id #=> 70311219446720
    p "string".object_id #=> 70311219446560
    p :symbol.object_id #=> 816028
    p :symbol.object_id #=> 816028
    p "string".equal?("string") #=> false
    p :symbol.equal?(:symbol) #=> true

## Arrayの初期作成
p Array.new(4) #=> [nil, nil, nil, nil]
p Array.new(2) { |index| index + 10 } #=> [10, 11]
p Array.new(3, "a") #=> ["a", "a", "a"]
p Array.new(3) { |i| i * 3 } #=> [0, 3, 6]
  # サイズを超えた要素への代入
  p arry = [10]  #=> [10]
  p arry.length  #=> 1
  p arry[3] = "aa"  #=>
  p arry #=> [10, nil, nil, "aa"]
  p arry.length #=> 4
    # インデックスに負の整数を指定/要素数を指定した要素の参照
    p arry[-2] #=> nil
    p arry[1, 3] #=> [nil nil, "aa"](インデックス１から３個分)

## 多重代入/可変長引数
a, b, c = 1, 2, 3
p c #=> 3
a, b, c = [1, 2, 3]
p c #=> 3
def method
  return 1, 2, 3
end
p a, b, c = method #=> [1, 2, 3]
  # 多重代入で値の個数が足りない場合
  a, b, c = 1, 2
  p c #=> nil
    # 多重代入で値の個数が多い場合
    a, b = 1, 2, 3
    p b #=> 2
      # １つの変数に複数の値を代入
      a = 1, 2
      p a #=> [1, 2]
        # 最後の変数に配列で代入
        a, *b = 1, 2, 3
        p b #=> [2, 3]
          # 可変長引数
          def method1(a, *b)
            b
          end
          p method1(1, 2, 3) #=> [2, 3]

##配列の演算
arry1 = [1, 1, 2, 2]
arry2 = [2, 2, 3, 3]
arry3 = [1]
p arry1 & arry2 #=> [2]　集合の積演算
p arry1 | arry2 #=> [1, 2, 3]　集合の和演算 *どちらも重複する値は削除される。
  #+演算子と-演算子
  p arry1 + arry2 #=> [1, 1, 2, 2, 2, 2, 3, 3]
  p arry1 - arry2 #=> [1, 1]
  p arry1 - arry3 #=> [2, 2] 対象が重複している場合は全て取り除く。
  p arry1 * 2 #=> [1, 1, 2, 2, 1, 1, 2, 2]
  p arry1 * "-" #=> "1-1-2-2" joinと同じ働きをする。
    #for式とスコープ（for式最大の特徴）(if式も同じ特徴を持つ)
    for i in [2, 3, 4] do
      v1 = 2
    end
    p v1 #=> 2 for式ではスコープは作成されないので内部で宣言した変数を外部でも参照可能。
