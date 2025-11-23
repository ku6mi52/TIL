require "sinatra"
get "/drink" do
  ["ラテ", "キャラフ", "ハムチ"].sample
end
