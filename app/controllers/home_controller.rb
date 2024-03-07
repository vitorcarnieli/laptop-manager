class HomeController < ApplicationController
  def index
    @laptops = Laptop.all
    @beneficiaries = Beneficiary.all
  end
end
