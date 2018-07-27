require 'uri'

uri = URI.parse('https://news.google.com/?hl=en-US&gl=US&ceid=US:en')
p uri.scheme #=> "https"
p uri.host #=> "news.google.com"
p uri.port #=> 443
p uri.path #=> "/"

p URI.split('https://news.google.com/?hl=en-US&gl=US&ceid=US:en') #=> ["https", nil, "news.google.com", nil, nil, "/", nil, "hl=en-US&gl=US&ceid=US:en", nil]
