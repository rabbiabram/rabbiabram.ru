require "rubygems"
require "sinatra"

require File.expand_path '../script.rb', __FILE__
use Rack::Reloader
run MyApp