##Threadとは？
#スレッドを表すクラスです。スレッドとはメモリ空間を共有して同時に実行される制御の流れです。 Thread を使うことで並行プログラミングが可能になります。
#プログラムの開始時に生成されるスレッドをメインスレッドと呼ぶ。

##スレッドの作成方法
# Thread.new
# Thread.start
# Thread.fork

##スレッドの実行方法
# value : スレッドの終了を待ち、戻り値を得る。
# join : スレッドの終了を待つ。

##スレッドの操作
# wakeup : 停止スレッドを実行可能状態にする
# run : 即座に処理をそのスレッドに切り替える
# kill/terminate/exit : 生きている状態のスレッドの終了/既に終了しているスレッドに対しては何も行わない。
# stop : 自分自身を停止状態にする
# pass : 現在のスレッドから他のスレッドに実行を移す
# priority : スレッドの優先度を確認する

##スレッドのライフサイクル
# run : 実行可能、または実行中
# sleep : 停止している
# aborting : 終了処理中
# false : 正常終了した
# nil : 異常終了した

##スレッドのライフサイクル状態確認
# status : 状態を文字列でえる
# alive? : スレッドが生きているかどうかをtrueかfalseで返す
# stop? : スレッドが停止しているかどうかをtrueかfalseで返す

###スレッドの実例
def time1
  sleep(2)
  puts Time.now.strftime("%H時%M分%S秒")
end

def time2
  sleep(2)
  puts Time.now.strftime("%H時%M分%S秒")
end
#スレッドを仕様しない場合
time1 #=> 13時23分30秒
time2 #=> 13時23分32秒

## Threadを利用した例
threads = []
threads << Thread.new { time1() }
threads << Thread.fork { time2() }
threads.each { |thr| thr.join }
#=> 13時23分34秒
#=> 13時23分34秒
