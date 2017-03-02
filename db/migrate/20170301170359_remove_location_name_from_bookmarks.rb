class RemoveLocationNameFromBookmarks < ActiveRecord::Migration[5.0]
  def change
    remove_column :bookmarks, :location_name, :string
  end
end
