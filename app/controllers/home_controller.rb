class HomeController < ApplicationController
  def index
    @laptops = Laptop.all
  end
end
