require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'
require 'twitter'

require_relative 'lib/follower_clash'

get '/' do
  erb :index
end

post '/twitter' do
  @user1 = FollowerClash::User.new(params["login-a"])
  @user2 = FollowerClash::User.new(params["login-b"])
  @result = FollowerClash::Comparer.new(@user1, @user2).compare
  erb :results
end

