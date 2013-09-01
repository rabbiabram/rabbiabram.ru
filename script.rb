require 'sinatra'
require 'redis'
require 'shotgun'
require 'rubygems'
require 'lorem-ipsum'

not_found do
  status 404
  "Something wrong"
end

get '/' do
  "Hello World!"
  erb :index, :layout => :'layouts/default'
end


get '/lorem' do
  @gen = LoremIpsum::Generator.new
  @gen.analyze 'lorem.txt'
  erb :index, :layout => :'layouts/default'
end