require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'
require 'twitter'

require_relative 'lib/twitter'

get '/' do
  
  @name = "Mike"
  @show_description = true
  erb :index
end

post '/twitter' do
  erb :results
end

get '/test' do
  t = Tweets.new
  search = t.search("%23makersquare")
  search.attrs[:statuses].count
end

