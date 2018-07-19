### Dirクラス・Fileクラス・IO クラス

### Dirクラス
p dir1 = Dir.pwd #=> "/Users/k-sato/Desktop/Ruby"
p dir2 = Dir.chdir("/Users/k-sato/Desktop/Ruby") #=> 0 #ディレクトリーを移動する。　成功した場合には0を返す。
#ディレクトリを作成する。 Dir.mkdir('ディレクトリ名前')
#ディレクトリを削除する。 Dir.rmdir('ディレクトリ名前')

### Fileクラス
file1 = File.open('ruby.txt') #**Directoryがファイルが格納されている場所にいなければこの操作はできない。
p file1 #=> #<File:ruby.txt>
p file1.read #=> "Hello form the text.\n"
p file1.mtime #=>2018-04-17 11:48:20 +0900 #Fileの最終更新時間。
file1.close #Fileを開けたら必ず閉じる！

### IOクラス
#Fileクラスのスーパークラスでもあり、基本的な出入力機能を備えたクラス。
p io = open('ruby.txt') #=> #<File:ruby.txt>
p io.read #=> "Hello form the text.\n"

## 標準出力に書き込む
p STDOUT.write('I gotta improve faster') #=> I gotta improve faster22
