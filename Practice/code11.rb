### Encoding

## Encodingクラス
a = "String"
p a.encoding #=> #<Encoding:UTF-8>
p Encoding.default_external #=> #<Encoding:UTF-8>

##エンコーディングの互換性
  #互換性がある場合にはエンコーディングを返し、互換性のない場合はnilを返す。
p Encoding.compatible?(Encoding::UTF_8, Encoding::US_ASCII) #=> #<Encoding:UTF-8>
p Encoding.compatible?(Encoding::UTF_8, Encoding::Shift_JIS) #=> nil

## エンコーディングを変更する。
b = a.encode("EUC-JP")
p b.encoding #=> #<Encoding:EUC-JP>
c = b.encode!("UTF-8")
p c.encoding #=> #<Encoding:UTF-8>
