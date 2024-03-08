class BeneficiariesController < ApplicationController
  def index
    @beneficiaries = Beneficiary.all
  end

  def show
    @beneficiary = Beneficiary.find(params[:id])
  end

  def new
    @beneficiary = Beneficiary.new
  end

  def create
    @beneficiary = Beneficiary.new(beneficiary_params)

    if @beneficiary.save
      redirect_to @beneficiary
    else
      render :new, status: :unprocessable_entity
    end
  end


  private
    def beneficiary_params
      params.require(:beneficiary).permit(:name, :identification_document, :contact_number, :contract_type)
    end
end
