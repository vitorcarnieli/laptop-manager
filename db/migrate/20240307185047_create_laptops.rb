class CreateLaptops < ActiveRecord::Migration[7.1]
  def change
    create_table :laptops do |t|
      t.string :serial_number
      t.string :listed_number
      t.string :model

      t.timestamps
    end
  end
end
