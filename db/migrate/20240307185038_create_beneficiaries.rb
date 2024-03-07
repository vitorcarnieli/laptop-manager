class CreateBeneficiaries < ActiveRecord::Migration[7.1]
  def change
    create_table :beneficiaries do |t|
      t.string :name
      t.string :identification_document
      t.string :contact_number
      t.string :contract_type

      t.timestamps
    end
  end
end
