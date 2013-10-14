ENV['RACK_ENV'] = 'production'
require 'sinatra/base'
require 'redis'
require 'shotgun'
require 'rubygems'
require 'lorem-ipsum'
require 'newrelic_rpm'


class MyApp < Sinatra::Base
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
    erb :lorem, :layout => :'layouts/default'
  end
end
