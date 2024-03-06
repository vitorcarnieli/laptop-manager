class CreateLaptops < ActiveRecord::Migration[7.1]
  def change
    create_table :laptops do |t|
      t.string :index

      t.timestamps
    end
  end
end
