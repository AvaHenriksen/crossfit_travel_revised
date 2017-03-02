class AddWebsiteToLocation < ActiveRecord::Migration[5.0]
  def change
    add_column :locations, :website, :string
  end
end
