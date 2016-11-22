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

post '/named-cat' do
  p params
  @cat_name = params[:name]
  erb (:index)
end

get '/cat-name' do
  erb (:cat_name_form)
end
