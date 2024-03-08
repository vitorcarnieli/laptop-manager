class LaptopsController < ApplicationController
  def index
    @laptops = Laptop.all
  end

  def show
    @laptop = Laptop.find(params[:id])
  end

  def new
    @laptop = Laptop.new
  end

  def create
    @laptop = Laptop.new(laptop_params)

    if @laptop.save
      redirect_to @laptop
    else
      render :new, status: :unprocessable_entity
    end
  end


  private
    def laptop_params
      params.require(:laptop).permit(:serial_number, :listed_number, :model)
    end
end
