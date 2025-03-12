require 'sinatra'

get '/' do
  'Hello, World!'
end

get '/todos' do
  @title = "TODOリスト"
  status 200
  erb :todos
end