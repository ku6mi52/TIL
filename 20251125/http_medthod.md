# HTTPメソッドの書き方

## ショートカット版
### POST, PUT, PATCHのようにボディを送る系  
POSTを例にすると、以下。
http.post(パス文字列, ボディ, ヘッダー) 
パス文字列は、送る先のパスを入れる。  
ボディにJSONを送りたい場合は、hash.to_jsonを入れる。何も送らないなら、""を入れる。  
ヘッダーは、"Content-Type"などが入り、省略可。

### GET, DELETEのようにボディ無しが通常系 
GETを例にすると、以下。  
http.get(パス文字列, ヘッダー)

## リクエストオブジェクト版
http.request(Net::HTTP::メソッド.new(URI))  
または  
```
a = Net::HTTP::メソッド.new(パスかURI)
a["ヘッダー"] = "..."
a.body = "..." 
response = http.request(a)
```
