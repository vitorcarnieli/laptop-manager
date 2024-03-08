class LinksController < ApplicationController
  def index
    @links = Link.all
    @laptops = Laptop.all
    @beneficiaries = Beneficiary.all
  end

  def show
    @link = Link.find(params[:id])
  end

  def new
    @laptops = Laptop.all
    @beneficiaries = Beneficiary.all
    @link = Link.new
  end

  def create
    @link = Link.new(laptop_params)

    if @link.save
      redirect_to @link
    else
      render :new, status: :unprocessable_entity
    end
  end


  private
    def laptop_params
      params.require(:link).permit()
    end
end
