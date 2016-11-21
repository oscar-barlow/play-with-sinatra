require 'sinatra'

get '/' do
  "Hello World"
end

get '/secret' do
  "Oooh, naughty!"
end

get '/ordinary' do
  "Nothing to see here, move along."
end
