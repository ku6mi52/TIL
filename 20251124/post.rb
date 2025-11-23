require "net/http"
require "uri"
require "json"
uri = URI.parse("https://httpbin.org/post")
body = { horichi: 200 }.to_json
headers = { "Content-Type" => "application/json" }

response = Net::HTTP.post(uri, body, headers)

p response.code
p response.body
