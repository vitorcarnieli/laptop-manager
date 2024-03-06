class LaptopsController < ApplicationController
  def index
    @laptops = Laptop.all
  end
end
