require 'net/http'

net = Net::HTTP.new('docs.ruby-lang.org')
net.start
res = net.get("ja/latest/doc/spec=2fliteral.html")
p res.body
net.finish

net = Net::HTTP.new('docs.ruby-lang.org')
net.start { |http|
  res = http.get("ja/latest/doc/spec=2fliteral.html")
}
p res #=> #<Net::HTTPMovedPermanently 301 Moved Permanently readbody=true>

http = Net::HTTP.new('www.ruby-lang.org', 80)
req = Net::HTTP::Get.new('/ja/documentation/')
res = http.request(req)
# p res.body #=> htmlのファイルが取れる。
