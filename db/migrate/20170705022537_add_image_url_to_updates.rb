class AddImageUrlToUpdates < ActiveRecord::Migration
  def change
    add_column :updates, :image_url, :string
  end
end
