class HomeController < ApplicationController
  def indexVisit
  end

  def indexUser
  end

  def market
    @products = Product.all
  end
end
