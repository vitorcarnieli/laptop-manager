class BeneficiariesController < ApplicationController
  def index
    @beneficiaries = Beneficiary.all
  end

  def show
    @beneficiary = Beneficiary.find(params[:id])
  end
end
