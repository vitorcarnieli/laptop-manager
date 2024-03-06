class CreateBeneficiaries < ActiveRecord::Migration[7.1]
  def change
    create_table :beneficiaries do |t|
      t.string :index

      t.timestamps
    end
  end
end
