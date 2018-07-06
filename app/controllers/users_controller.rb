class UsersController < ApplicationController
require 'marketingcloudsdk'

def index
  @user = User.all
end

def new
  @user = User.new
end

end

def auth
  {
    'client' => {
      'Client_id' => ENV["Client_id"],
      'Client_secret' => ENV["Client_secret"]
    }
  }
end

end
