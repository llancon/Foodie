class FoodsController < ApplicationController

  def create
    @food = Food.create(:params)
  end

  def update
    @food = Food.find(:id)
  
  end

end
