require 'sinatra'

get '/' do
  "Hello"
end

get '/secret' do
  "Hi"
end

get '/amanda' do
  "amanda"
end

get '/oscar' do
  "oscar"
end

get '/sinatra' do
  "learning sinatra"
end

get '/random-cat' do
  @cat_name = ["Viking", "Oscar", "Amanda", "Lionel"].sample
  erb (:index)
end

get '/named-cat' do
  p params
  @cat_name = params[:name]
  @age = params[:age]
  erb (:index)
end
