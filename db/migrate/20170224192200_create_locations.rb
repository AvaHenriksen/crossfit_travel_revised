class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :address
      t.text :details
      t.integer :city_id
      t.string :category

      t.timestamps

    end
  end
end
