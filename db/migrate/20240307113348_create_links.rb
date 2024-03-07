class CreateLinks < ActiveRecord::Migration[7.1]
  def change
    create_table :links do |t|
      t.date :init_date
      t.references :person, null: false, foreign_key: true
      t.references :laptop, null: false, foreign_key: true
      t.date :end_date

      t.timestamps
    end
  end
end
