class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :image
      t.integer :location_id
      t.integer :user_id
      t.string :caption

      t.timestamps

    end
  end
end
