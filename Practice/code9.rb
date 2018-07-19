### Class!!

## class式の評価順序
  #class式が評価されると内部が評価される。
p 1
class Hoge
  p 2
end
p 3 #=> 1 2 3

## Classの継承
class Class1
end
class Class2 < Class1
end
class Class3 < Class2
end
ins1 = Class2.new
  p Class2.class #=> class # .classメソッドはインスタントに用いるメソッドで何のクラスに属するか調査。
  p ins1.class #=> Class2
  p Class3.superclass #=> Class2 #superclassメソッドはクラスに用いることで、継承先のクラスを調査する。
