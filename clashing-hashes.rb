require 'twitter'
require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  '<h1>hello Tyler</h1>'
@name = "Tyler"

@show_description = false



erb :index
end

post '/twitter' do

erb :twitter
end