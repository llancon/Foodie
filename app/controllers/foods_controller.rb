class FoodsController < ApplicationController

  def create
    @food = Food.create(:params)
  end

  def update
    @food = Food.find(:id)
    if current_user
    #need to define user login
  end

end
