require "net/http"
require "uri"
require "json"
uri = URI.parse("http://igarashikuniaki.net/example.json")
result = Net::HTTP.get(uri)
hash = JSON.parse(result)
p hash
p hash["caffe latte"]
