class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    if session[:counter].nil?
      session[:counter] = 0
    end
    
    @counter = session[:counter]
    @counter += 1
    session[:counter] = @counter
  end
end
