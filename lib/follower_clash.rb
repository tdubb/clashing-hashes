require 'rubygems'
require 'bundler/setup'
require 'twitter'

module FollowerClash
  class Comparer
    def initialize(user1, user2)
      @user1 = user1
      @user2 = user2
    end

    def compare
      if @user1.followers > @user2.followers
        @user1
      else
        @user2
      end
    end
  end

  class User
    def initialize(login)
      @login = login
    end

    def followers
      client = Twitter::Client.new

      client.user(@login).followers_count
    end
  end
end