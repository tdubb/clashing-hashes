require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'
require 'twitter'

# require_relative './twitter'

get '/' do
  @name = "Mike"
  @show_description = true
  erb :index
end

post '/twitter' do
  Twitter.
  erb :results
end

