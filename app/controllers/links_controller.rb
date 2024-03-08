class LinksController < ApplicationController
  def index
    @links = Link.all
    @laptops = Laptop.all.map do |laptop|
      laptop.links.empty? || laptop.links.last.end_date.nil?
    end
    @beneficiaries = Beneficiary.all

  end

  def show
    @link = Link.find(params[:id])
    @beneficiary = @link.beneficiary
    @laptop = @link.laptop
  end

  def new
    @laptops = []
    @beneficiaries = []
    @link = Link.new
    Laptop.all.each do |l|
      if l.links.count > 0
        if !l.links.last.end_date.nil?
            @laptops.push(l)
        end
      else
        @laptops.push(l)
      end
    end
    Beneficiary.all.each do |b|
      if b.links.count > 0
        if !b.links.last.end_date.nil?
            @beneficiaries.push(b)
        end
      else
        @beneficiaries.push(b)
      end
    end
  end

  def create
    @link = Link.new(link_params)
    @link.init_date = Date.today

    if @link.save
      redirect_to @link
    else
      render :new, status: :unprocessable_entity
    end
  end


  private
    def link_params
      params.require(:link).permit(:beneficiary_id, :laptop_id)
    end
end
